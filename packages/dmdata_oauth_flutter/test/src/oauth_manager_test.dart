import 'package:dmdata_oauth_api_client/dmdata_oauth_api_client.dart';
import 'package:dmdata_oauth_flutter/src/model/oauth_config.dart';
import 'package:dmdata_oauth_flutter/src/model/oauth_state.dart';
import 'package:dmdata_oauth_flutter/src/oauth_manager.dart';
import 'package:dmdata_oauth_flutter/src/storage/oauth_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOAuthStorage extends Mock implements OAuthStorage {}

class MockDmdataOauthApiClient extends Mock implements DmdataOauthApiClient {}

class MockDmdataOAuthAuthorizationUrlGenerator extends Mock
    implements DmdataOAuthAuthorizationUrlGenerator {}

void main() {
  setUpAll(() {
    registerFallbackValue(OAuthGrantType.authorizationCode);
    registerFallbackValue(ResponseMode.query);
    registerFallbackValue(CodeChallengeMethod.S256);
    registerFallbackValue(
      OAuthState(
        accessToken: 'dummy_access_token',
        refreshToken: 'dummy_refresh_token',
        expiresAt: DateTime(2024),
        scope: 'dummy_scope',
      ),
    );
  });

  late OAuthManager manager;
  late MockOAuthStorage mockStorage;
  late MockDmdataOauthApiClient mockClient;
  late MockDmdataOAuthAuthorizationUrlGenerator mockUrlGenerator;
  late OAuthConfig config;

  setUp(() {
    mockStorage = MockOAuthStorage();
    mockClient = MockDmdataOauthApiClient();
    mockUrlGenerator = MockDmdataOAuthAuthorizationUrlGenerator();
    config = const OAuthConfig(
      clientId: 'test_client_id',
      clientSecret: 'test_client_secret',
      redirectUri: 'test://callback',
      scope: 'test_scope',
    );

    manager = OAuthManager(
      config: config,
      storage: mockStorage,
      client: mockClient,
      authorizationUrlGenerator: mockUrlGenerator,
    );
  });

  group('getCurrentState', () {
    test('ストレージから状態を正しく取得できること', () async {
      // Arrange
      final expectedState = OAuthState(
        accessToken: 'test_access_token',
        refreshToken: 'test_refresh_token',
        expiresAt: DateTime.now().add(const Duration(hours: 1)),
        scope: 'test_scope',
      );
      when(() => mockStorage.load()).thenAnswer((_) async => expectedState);

      // Act
      final result = await manager.getCurrentState();

      // Assert
      expect(result, expectedState);
      verify(() => mockStorage.load()).called(1);
    });

    test('ストレージからの読み込みに失敗した場合、例外が伝播すること', () async {
      // Arrange
      when(() => mockStorage.load()).thenThrow(Exception('Storage error'));

      // Act & Assert
      expect(
        () => manager.getCurrentState(),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('handleAuthorizationCode', () {
    test('認可コードを使用して正しくトークンを取得できること', () async {
      // Arrange
      final tokenResponse = OAuthTokenResponse(
        accessToken: 'new_access_token',
        refreshToken: 'new_refresh_token',
        expiresIn: 3600,
        scope: 'test_scope',
        tokenType: 'Bearer',
      );

      when(
        () => mockClient.requestToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          code: any(named: 'code'),
          codeVerifier: any(named: 'codeVerifier'),
          redirectUri: any(named: 'redirectUri'),
        ),
      ).thenAnswer((_) async => tokenResponse);
      when(() => mockStorage.save(any())).thenAnswer((_) async {});

      // Act
      await manager.handleAuthorizationCode(
        code: 'test_code',
        codeVerifier: 'test_verifier',
      );

      // Assert
      verify(
        () => mockClient.requestToken(
          clientId: config.clientId,
          clientSecret: config.clientSecret,
          grantType: OAuthGrantType.authorizationCode,
          code: 'test_code',
          codeVerifier: 'test_verifier',
          redirectUri: config.redirectUri,
        ),
      ).called(1);
      verify(() => mockStorage.save(any())).called(1);
    });

    test('リフレッシュトークンが取得できない場合、例外をスローすること', () async {
      // Arrange
      final tokenResponse = OAuthTokenResponse(
        accessToken: 'new_access_token',
        refreshToken: null, // リフレッシュトークンなし
        expiresIn: 3600,
        scope: 'test_scope',
        tokenType: 'Bearer',
      );

      when(
        () => mockClient.requestToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          code: any(named: 'code'),
          codeVerifier: any(named: 'codeVerifier'),
          redirectUri: any(named: 'redirectUri'),
        ),
      ).thenAnswer((_) async => tokenResponse);

      // Act & Assert
      expect(
        () => manager.handleAuthorizationCode(
          code: 'test_code',
          codeVerifier: 'test_verifier',
        ),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('リフレッシュトークンまたはスコープが取得できませんでした'),
          ),
        ),
      );
    });

    test('APIリクエストが失敗した場合、例外が伝播すること', () async {
      // Arrange
      when(
        () => mockClient.requestToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          code: any(named: 'code'),
          codeVerifier: any(named: 'codeVerifier'),
          redirectUri: any(named: 'redirectUri'),
        ),
      ).thenThrow(Exception('API error'));

      // Act & Assert
      expect(
        () => manager.handleAuthorizationCode(
          code: 'test_code',
          codeVerifier: 'test_verifier',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('refreshToken', () {
    test('トークンを正しくリフレッシュできること', () async {
      // Arrange
      final currentState = OAuthState(
        accessToken: 'old_access_token',
        refreshToken: 'old_refresh_token',
        expiresAt: DateTime.now(),
        scope: 'test_scope',
      );

      final tokenResponse = OAuthTokenResponse(
        accessToken: 'new_access_token',
        refreshToken: 'new_refresh_token',
        expiresIn: 3600,
        scope: 'test_scope',
        tokenType: 'Bearer',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => currentState);
      when(
        () => mockClient.refreshToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          refreshToken: any(named: 'refreshToken'),
        ),
      ).thenAnswer((_) async => tokenResponse);
      when(() => mockStorage.save(any())).thenAnswer((_) async {});

      // Act
      await manager.refreshToken();

      // Assert
      verify(
        () => mockClient.refreshToken(
          clientId: config.clientId,
          clientSecret: config.clientSecret,
          grantType: OAuthGrantType.refreshToken,
          refreshToken: currentState.refreshToken,
        ),
      ).called(1);
      verify(() => mockStorage.save(any())).called(1);
    });

    test('現在の認証状態が存在しない場合、例外をスローすること', () async {
      // Arrange
      when(() => mockStorage.load()).thenAnswer((_) async => null);

      // Act & Assert
      expect(
        () => manager.refreshToken(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('リフレッシュトークンがありません'),
          ),
        ),
      );
    });

    test('トークンリフレッシュのAPIリクエストが失敗した場合、例外が伝播すること', () async {
      // Arrange
      final currentState = OAuthState(
        accessToken: 'old_access_token',
        refreshToken: 'old_refresh_token',
        expiresAt: DateTime.now(),
        scope: 'test_scope',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => currentState);
      when(
        () => mockClient.refreshToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          refreshToken: any(named: 'refreshToken'),
        ),
      ).thenThrow(Exception('API error'));

      // Act & Assert
      expect(
        () => manager.refreshToken(),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('signOut', () {
    test('正しくサインアウトできること', () async {
      // Arrange
      final currentState = OAuthState(
        accessToken: 'test_access_token',
        refreshToken: 'test_refresh_token',
        expiresAt: DateTime.now(),
        scope: 'test_scope',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => currentState);
      when(
        () => mockClient.revokeToken(
          clientId: any(named: 'clientId'),
          token: any(named: 'token'),
        ),
      ).thenAnswer((_) async {});
      when(() => mockStorage.clear()).thenAnswer((_) async {});

      // Act
      await manager.signOut();

      // Assert
      verify(
        () => mockClient.revokeToken(
          clientId: config.clientId,
          token: currentState.accessToken,
        ),
      ).called(1);
      verify(() => mockStorage.clear()).called(1);
    });

    test('現在の認証状態が存在しない場合、例外をスローすること', () async {
      // Arrange
      when(() => mockStorage.load()).thenAnswer((_) async => null);

      // Act & Assert
      expect(
        () => manager.signOut(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('認証状態がありません'),
          ),
        ),
      );
    });

    test('トークン失効のAPIリクエストが失敗した場合、例外が伝播すること', () async {
      // Arrange
      final currentState = OAuthState(
        accessToken: 'test_access_token',
        refreshToken: 'test_refresh_token',
        expiresAt: DateTime.now(),
        scope: 'test_scope',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => currentState);
      when(
        () => mockClient.revokeToken(
          clientId: any(named: 'clientId'),
          token: any(named: 'token'),
        ),
      ).thenThrow(Exception('API error'));

      // Act & Assert
      expect(() => manager.signOut(), throwsA(isA<Exception>()));
    });
  });

  group('generateAuthorizationUrl', () {
    test('認可URLを正しく生成できること', () {
      // Arrange
      final expectedUri = Uri.parse('https://example.com/auth');
      when(
        () => mockUrlGenerator.generate(
          clientId: any(named: 'clientId'),
          redirectUri: any(named: 'redirectUri'),
          scope: any(named: 'scope'),
          state: any(named: 'state'),
          responseMode: any(named: 'responseMode'),
          codeChallenge: any(named: 'codeChallenge'),
          codeChallengeMethod: any(named: 'codeChallengeMethod'),
        ),
      ).thenReturn(expectedUri);

      // Act
      final result = manager.generateAuthorizationUrl();

      // Assert
      expect(result, expectedUri);
      verify(
        () => mockUrlGenerator.generate(
          clientId: config.clientId,
          redirectUri: config.redirectUri,
          scope: config.scope,
          state: any(named: 'state'),
          responseMode: ResponseMode.query,
          codeChallenge: any(named: 'codeChallenge'),
          codeChallengeMethod: CodeChallengeMethod.S256,
        ),
      ).called(1);
    });
  });

  group('getCurrentStateAndRefreshIfNeeded', () {
    test('トークンが期限切れの場合、リフレッシュを実行すること', () async {
      // Arrange
      final expiredState = OAuthState(
        accessToken: 'old_access_token',
        refreshToken: 'old_refresh_token',
        expiresAt: DateTime.now().subtract(const Duration(hours: 1)), // 期限切れ
        scope: 'test_scope',
      );

      final tokenResponse = OAuthTokenResponse(
        accessToken: 'new_access_token',
        refreshToken: 'new_refresh_token',
        expiresIn: 3600,
        scope: 'test_scope',
        tokenType: 'Bearer',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => expiredState);
      when(
        () => mockClient.refreshToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          refreshToken: any(named: 'refreshToken'),
        ),
      ).thenAnswer((_) async => tokenResponse);
      when(() => mockStorage.save(any())).thenAnswer((_) async {});

      // Act
      await manager.getCurrentStateAndRefreshIfNeeded();

      // Assert
      verify(
        () => mockClient.refreshToken(
          clientId: config.clientId,
          clientSecret: config.clientSecret,
          grantType: OAuthGrantType.refreshToken,
          refreshToken: expiredState.refreshToken,
        ),
      ).called(1);
    });

    test('トークンが有効な場合、リフレッシュを実行しないこと', () async {
      // Arrange
      final validState = OAuthState(
        accessToken: 'valid_access_token',
        refreshToken: 'valid_refresh_token',
        expiresAt: DateTime.now().add(const Duration(hours: 1)), // まだ有効
        scope: 'test_scope',
      );

      when(() => mockStorage.load()).thenAnswer((_) async => validState);

      // Act
      final result = await manager.getCurrentStateAndRefreshIfNeeded();

      // Assert
      expect(result, validState);
      verifyNever(
        () => mockClient.refreshToken(
          clientId: any(named: 'clientId'),
          clientSecret: any(named: 'clientSecret'),
          grantType: any(named: 'grantType'),
          refreshToken: any(named: 'refreshToken'),
        ),
      );
    });
  });
}

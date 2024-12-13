import 'package:dmdata_oauth_api_client/dmdata_oauth_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('OAuthAuthorizationUrl', () {
    test('デフォルトのベースURLでURLが生成できる', () {
      // Arrange
      final generator = DmdataOAuthAuthorizationUrlGenerator();

      // Act
      final uri = generator.generate(
        clientId: 'CId.test_client_id',
        redirectUri: 'https://example.com/callback',
        scope: 'telegram.list',
        state: 'test_state',
      );

      // Assert
      expect(
        uri.toString(),
        equals(
          'https://manager.dmdata.jp/account/oauth2/v1/auth'
          '?client_id=CId.test_client_id'
          '&response_type=code'
          '&redirect_uri=https%3A%2F%2Fexample.com%2Fcallback'
          '&scope=telegram.list'
          '&state=test_state'
          '&response_mode=query',
        ),
      );
    });

    test('カスタムベースURLでURLが生成できる', () {
      // Arrange
      final generator = DmdataOAuthAuthorizationUrlGenerator(
        baseUrl: 'https://custom.example.com/oauth/auth',
      );

      // Act
      final uri = generator.generate(
        clientId: 'CId.test_client_id',
        redirectUri: 'https://example.com/callback',
        scope: 'telegram.list',
        state: 'test_state',
      );

      // Assert
      expect(
        uri.toString(),
        equals(
          'https://custom.example.com/oauth/auth'
          '?client_id=CId.test_client_id'
          '&response_type=code'
          '&redirect_uri=https%3A%2F%2Fexample.com%2Fcallback'
          '&scope=telegram.list'
          '&state=test_state'
          '&response_mode=query',
        ),
      );
    });

    test('複数のスコープを指定できる', () {
      // Arrange
      final generator = DmdataOAuthAuthorizationUrlGenerator();

      // Act
      final uri = generator.generate(
        clientId: 'CId.test_client_id',
        redirectUri: 'https://example.com/callback',
        scope: 'telegram.list telegram.get.earthquake telegram.data',
        state: 'test_state',
      );

      // Assert
      expect(
        uri.toString(),
        contains(
          'scope=telegram.list+telegram.get.earthquake+telegram.data',
        ),
      );
    });

    test('ResponseModeを変更できる', () {
      // Arrange
      final generator = DmdataOAuthAuthorizationUrlGenerator();

      // Act
      final uri = generator.generate(
        clientId: 'CId.test_client_id',
        redirectUri: 'https://example.com/callback',
        scope: 'telegram.list',
        state: 'test_state',
        responseMode: ResponseMode.fragment,
      );

      // Assert
      expect(uri.toString(), contains('response_mode=fragment'));
    });

    test('PKCEパラメータを追加できる', () {
      // Arrange
      final generator = DmdataOAuthAuthorizationUrlGenerator();

      // Act
      final uri = generator.generate(
        clientId: 'CId.test_client_id',
        redirectUri: 'https://example.com/callback',
        scope: 'telegram.list',
        state: 'test_state',
        codeChallenge: 'test_challenge',
        codeChallengeMethod: 'S256',
      );

      // Assert
      expect(uri.toString(), contains('code_challenge=test_challenge'));
      expect(uri.toString(), contains('code_challenge_method=S256'));
    });

    group('バリデーション', () {
      test('stateが64バイトを超える場合はエラー', () {
        // Arrange
        final generator = DmdataOAuthAuthorizationUrlGenerator();

        // Act & Assert
        expect(
          () => generator.generate(
            clientId: 'CId.test_client_id',
            redirectUri: 'https://example.com/callback',
            scope: 'telegram.list',
            state: 'a' * 65,
          ),
          throwsA(isA<AssertionError>()),
        );
      });

      test('code_challengeのみの指定はエラー', () {
        // Arrange
        final generator = DmdataOAuthAuthorizationUrlGenerator();

        // Act & Assert
        expect(
          () => generator.generate(
            clientId: 'CId.test_client_id',
            redirectUri: 'https://example.com/callback',
            scope: 'telegram.list',
            state: 'test_state',
            codeChallenge: 'test_challenge',
          ),
          throwsA(isA<AssertionError>()),
        );
      });

      test('code_challenge_methodが不正な値の場合はエラー', () {
        // Arrange
        final generator = DmdataOAuthAuthorizationUrlGenerator();

        // Act & Assert
        expect(
          () => generator.generate(
            clientId: 'CId.test_client_id',
            redirectUri: 'https://example.com/callback',
            scope: 'telegram.list',
            state: 'test_state',
            codeChallenge: 'test_challenge',
            codeChallengeMethod: 'invalid',
          ),
          throwsA(isA<AssertionError>()),
        );
      });
    });
  });
}

import 'dart:convert';

import 'package:dmdata_oauth_api_client/dmdata_oauth_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('OAuthTokenResponse', () {
    test('JSONからデコードできる - 全フィールドあり', () {
      // Arrange
      const json = '''
      {
        "access_token": "ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT",
        "token_type": "Bearer",
        "expires_in": 21600,
        "refresh_token": "ARh.RRRRRRRRRRRRRRRRRRRRRRRRRRR",
        "scope": "telegram.list telegram.get.earthquake telegram.data"
      }
      ''';

      // Act
      final response = OAuthTokenResponse.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );

      // Assert
      expect(response.accessToken, equals('ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT'));
      expect(response.tokenType, equals('Bearer'));
      expect(response.expiresIn, equals(21600));
      expect(
        response.refreshToken,
        equals('ARh.RRRRRRRRRRRRRRRRRRRRRRRRRRR'),
      );
      expect(
        response.scope,
        equals('telegram.list telegram.get.earthquake telegram.data'),
      );
    });

    test('JSONからデコードできる - リフレッシュトークンなし', () {
      // Arrange
      const json = '''
      {
        "access_token": "ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT",
        "token_type": "Bearer",
        "expires_in": 21600,
        "scope": "telegram.list"
      }
      ''';

      // Act
      final response = OAuthTokenResponse.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );

      // Assert
      expect(response.accessToken, equals('ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT'));
      expect(response.tokenType, equals('Bearer'));
      expect(response.expiresIn, equals(21600));
      expect(response.refreshToken, isNull);
      expect(response.scope, equals('telegram.list'));
    });

    test('JSONにエンコードできる', () {
      // Arrange
      const response = OAuthTokenResponse(
        accessToken: 'ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT',
        tokenType: 'Bearer',
        expiresIn: 21600,
        refreshToken: 'ARh.RRRRRRRRRRRRRRRRRRRRRRRRRRR',
        scope: 'telegram.list telegram.get.earthquake telegram.data',
      );

      // Act
      final json = jsonEncode(response.toJson());

      // Assert
      expect(
        json,
        equals(
          '''
          {
            "access_token":"ATn.TTTTTTTTTTTTTTTTTTTTTTTTTTT",
            "token_type":"Bearer",
            "expires_in":21600,
            "refresh_token":"ARh.RRRRRRRRRRRRRRRRRRRRRRRRRRR",
            "scope":"telegram.list telegram.get.earthquake telegram.data"
          }
          ''',
        ),
      );
    });
  });
}

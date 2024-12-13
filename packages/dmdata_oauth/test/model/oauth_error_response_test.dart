import 'dart:convert';

import 'package:dmdata_oauth/src/model/oauth_error_response.dart';
import 'package:test/test.dart';

void main() {
  group('OAuthErrorResponse', () {
    test('JSONからデコードできる - 全フィールドあり', () {
      // Arrange
      const json = '''
      {
        "error": "invalid_request",
        "error_description": "The client_id is missing."
      }
      ''';

      // Act
      final response = OAuthErrorResponse.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );

      // Assert
      expect(response.error, equals('invalid_request'));
      expect(response.errorDescription, equals('The client_id is missing.'));
    });

    test('JSONからデコードできる - error_descriptionなし', () {
      // Arrange
      const json = '''
      {
        "error": "invalid_request"
      }
      ''';

      // Act
      final response = OAuthErrorResponse.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );

      // Assert
      expect(response.error, equals('invalid_request'));
      expect(response.errorDescription, isNull);
    });

    test('JSONにエンコードできる', () {
      // Arrange
      final response = OAuthErrorResponse(
        error: 'invalid_request',
        errorDescription: 'The client_id is missing.',
      );

      // Act
      final json = jsonEncode(response.toJson());

      // Assert
      expect(
        json,
        equals(
          '{'
          '"error":"invalid_request",'
          '"error_description":"The client_id is missing."'
          '}',
        ),
      );
    });
  });
}

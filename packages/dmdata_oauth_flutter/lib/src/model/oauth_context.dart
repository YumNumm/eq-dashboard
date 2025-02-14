import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_context.freezed.dart';
part 'oauth_context.g.dart';

/// Authorization Code Grantにおけるコンテキストを保持
@freezed
class OAuthContext with _$OAuthContext {
  factory OAuthContext.create({
    bool usePkce = true,
  }) {
    final state = generateRandomString(64);
    if (usePkce) {
      final codeChallenge = base64UrlEncode(
        sha256
            .convert(
              utf8.encode(state),
            )
            .bytes,
      );
      return OAuthContext._(
        state: state,
        codeChallenge: codeChallenge,
        codeChallengeMethod: CodeChallengeMethod.s256,
      );
    }
    return OAuthContext._(
      state: state,
      codeChallenge: null,
      codeChallengeMethod: CodeChallengeMethod.plain,
    );
  }
  const factory OAuthContext._({
    /// CSRF対策のためのstate
    @Assert(
      'state.length <= 64',
      'state must be less than or equal to 64 bytes',
    )
    required String state,

    /// コードチャレンジ
    required String? codeChallenge,

    /// コードチャレンジメソッド
    required CodeChallengeMethod codeChallengeMethod,
  }) = _OAuthContext;

  factory OAuthContext.fromJson(Map<String, dynamic> json) =>
      _$OAuthContextFromJson(json);

  /// StateやcodeChallengeに利用する文字セット
  static const String _charset =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~';

  static String generateRandomString(int bytes) => List.generate(
        bytes ~/ 2,
        (i) => _charset[Random.secure().nextInt(_charset.length)],
      ).join();
}

extension OAuthContextExtension on OAuthContext {
  /// PKCEを利用した場合のコードチャレンジを生成
  /// OAuthContextのcodeChallengeがnullの場合はErrorを返します
  String get codeVerifier {
    if (codeChallenge == null) {
      throw Exception(
        'codeChallenge is null. codeVerifier is not supported.',
      );
    }

    if (codeChallengeMethod == CodeChallengeMethod.plain) {
      return codeChallenge!;
    } else {
      return base64UrlEncode(
        sha256
            .convert(
              utf8.encode(codeChallenge!),
            )
            .bytes,
      );
    }
  }
}

enum CodeChallengeMethod {
  /// S256
  s256,

  /// Plain
  plain,
  ;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_state.freezed.dart';
part 'oauth_state.g.dart';

/// OAuth認証の状態を表すモデル
@freezed
class OAuthState with _$OAuthState {
  const factory OAuthState({
    /// アクセストークン
    required String accessToken,

    /// リフレッシュトークン
    required String refreshToken,

    /// アクセストークンの有効期限
    required DateTime expiresAt,

    /// リフレッシュトークンの有効期限
    required DateTime refreshTokenExpiresAt,

    /// 付与されたスコープ
    required String scope,
  }) = _OAuthState;

  factory OAuthState.fromJson(Map<String, dynamic> json) =>
      _$OAuthStateFromJson(json);
}

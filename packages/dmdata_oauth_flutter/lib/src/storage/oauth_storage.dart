import '../model/oauth_state.dart';

/// OAuth認証の状態を永続化するためのインターフェース
abstract class OAuthStorage {
  /// 認証状態を保存
  Future<void> save(OAuthState state);

  /// 認証状態を読み込み
  Future<OAuthState?> load();

  /// 認証状態を削除
  Future<void> clear();
}

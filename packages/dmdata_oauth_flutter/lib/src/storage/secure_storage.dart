import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../model/oauth_state.dart';
import 'oauth_storage.dart';

/// FlutterSecureStorageを使用したOAuth認証状態の永続化
class SecureOAuthStorage implements OAuthStorage {
  SecureOAuthStorage({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  final FlutterSecureStorage _storage;
  static const _key = 'dmdata_oauth_state';

  @override
  Future<void> save(OAuthState state) async {
    final json = jsonEncode(state.toJson());
    await _storage.write(key: _key, value: json);
  }

  @override
  Future<OAuthState?> load() async {
    final json = await _storage.read(key: _key);
    if (json == null) return null;

    return OAuthState.fromJson(
      jsonDecode(json) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _key);
  }
}

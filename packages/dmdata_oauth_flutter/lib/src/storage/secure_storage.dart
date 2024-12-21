import 'dart:convert';
import 'dart:developer';

import 'package:dmdata_oauth_flutter/src/model/oauth_state.dart';
import 'package:dmdata_oauth_flutter/src/storage/oauth_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:json_annotation/json_annotation.dart';

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
    if (json == null) {
      return null;
    }

    try {
      return OAuthState.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );
    } on CheckedFromJsonException catch (e) {
      log(e.toString());
      return null;
    } on FormatException catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _key);
  }
}

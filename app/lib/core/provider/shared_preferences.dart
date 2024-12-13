import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) =>
    ref.watch(sharedPreferencesInternalProvider).requireValue;

@riverpod
Future<SharedPreferences> sharedPreferencesInternal(Ref ref) async =>
    SharedPreferences.getInstance();

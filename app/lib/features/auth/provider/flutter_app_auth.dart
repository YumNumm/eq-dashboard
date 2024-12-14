import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_app_auth.g.dart';

@Riverpod(keepAlive: true)
FlutterAppAuth flutterAppAuth(Ref ref) => const FlutterAppAuth();

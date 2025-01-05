// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_websocket_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dmdataWebsocketNotifierHash() =>
    r'795e83dc2678ee31c806d014ca9072b12f35c9a2';

/// WebSocketの接続を行います
/// `connect` を呼ぶことで、WebSocketのインスタンスを取得できます
/// throws `WebSocketException`
/// `DmdataWebsocketMessageProvider` を用いることで Ping/Pongを自動でハンドリングします
///
/// Copied from [DmdataWebsocketNotifier].
@ProviderFor(DmdataWebsocketNotifier)
final dmdataWebsocketNotifierProvider = AutoDisposeAsyncNotifierProvider<
    DmdataWebsocketNotifier, WebSocket?>.internal(
  DmdataWebsocketNotifier.new,
  name: r'dmdataWebsocketNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dmdataWebsocketNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DmdataWebsocketNotifier = AutoDisposeAsyncNotifier<WebSocket?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

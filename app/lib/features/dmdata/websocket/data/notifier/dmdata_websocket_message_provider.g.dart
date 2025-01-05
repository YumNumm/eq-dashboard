// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_websocket_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dmdataWebsocketEventsHash() =>
    r'852e36fd10716a96bf6d12369146acea99774a27';

/// See also [_dmdataWebsocketEvents].
@ProviderFor(_dmdataWebsocketEvents)
final _dmdataWebsocketEventsProvider =
    AutoDisposeFutureProvider<Stream<WebSocketEvent>>.internal(
  _dmdataWebsocketEvents,
  name: r'_dmdataWebsocketEventsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dmdataWebsocketEventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _DmdataWebsocketEventsRef
    = AutoDisposeFutureProviderRef<Stream<WebSocketEvent>>;
String _$dmdataWebsocketMessageProviderHash() =>
    r'e75e684e15c6f91af85207061956b94e455623c5';

/// See also [DmdataWebsocketMessageProvider].
@ProviderFor(DmdataWebsocketMessageProvider)
final dmdataWebsocketMessageProviderProvider = AutoDisposeAsyncNotifierProvider<
    DmdataWebsocketMessageProvider, DmdataWebsocketMessageModel>.internal(
  DmdataWebsocketMessageProvider.new,
  name: r'dmdataWebsocketMessageProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dmdataWebsocketMessageProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DmdataWebsocketMessageProvider
    = AutoDisposeAsyncNotifier<DmdataWebsocketMessageModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

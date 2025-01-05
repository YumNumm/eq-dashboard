// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_websocket_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dmdataWebsocketEventsHash() =>
    r'd3ee24874d7f88b62118302b19151edc9bf4b19d';

/// See also [dmdataWebsocketEvents].
@ProviderFor(dmdataWebsocketEvents)
final dmdataWebsocketEventsProvider =
    AutoDisposeStreamProvider<WebSocketEvent>.internal(
  dmdataWebsocketEvents,
  name: r'dmdataWebsocketEventsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dmdataWebsocketEventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DmdataWebsocketEventsRef = AutoDisposeStreamProviderRef<WebSocketEvent>;
String _$dmdataWebsocketMessagesHash() =>
    r'6b1f1f2adab7b308d6ad2eb6dabeb3d2ce49d920';

/// See also [dmdataWebsocketMessages].
@ProviderFor(dmdataWebsocketMessages)
final dmdataWebsocketMessagesProvider =
    AutoDisposeStreamProvider<WebSocketMessage>.internal(
  dmdataWebsocketMessages,
  name: r'dmdataWebsocketMessagesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dmdataWebsocketMessagesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DmdataWebsocketMessagesRef
    = AutoDisposeStreamProviderRef<WebSocketMessage>;
String _$dmdataWebsocketMessageProviderHash() =>
    r'50b854ec55c469b227c3c164948990cceeb78606';

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

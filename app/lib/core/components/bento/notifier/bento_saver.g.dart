// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'bento_saver.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bentoSaverHash() => r'729f8b035ec1c112f0b3c07e0f7126463c7531cb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BentoSaver extends BuildlessNotifier<BentoSavedState?> {
  late final String id;

  BentoSavedState? build(
    String id,
  );
}

/// See also [BentoSaver].
@ProviderFor(BentoSaver)
const bentoSaverProvider = BentoSaverFamily();

/// See also [BentoSaver].
class BentoSaverFamily extends Family<BentoSavedState?> {
  /// See also [BentoSaver].
  const BentoSaverFamily();

  /// See also [BentoSaver].
  BentoSaverProvider call(
    String id,
  ) {
    return BentoSaverProvider(
      id,
    );
  }

  @override
  BentoSaverProvider getProviderOverride(
    covariant BentoSaverProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bentoSaverProvider';
}

/// See also [BentoSaver].
class BentoSaverProvider
    extends NotifierProviderImpl<BentoSaver, BentoSavedState?> {
  /// See also [BentoSaver].
  BentoSaverProvider(
    String id,
  ) : this._internal(
          () => BentoSaver()..id = id,
          from: bentoSaverProvider,
          name: r'bentoSaverProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bentoSaverHash,
          dependencies: BentoSaverFamily._dependencies,
          allTransitiveDependencies:
              BentoSaverFamily._allTransitiveDependencies,
          id: id,
        );

  BentoSaverProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  BentoSavedState? runNotifierBuild(
    covariant BentoSaver notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BentoSaver Function() create) {
    return ProviderOverride(
      origin: this,
      override: BentoSaverProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  NotifierProviderElement<BentoSaver, BentoSavedState?> createElement() {
    return _BentoSaverProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BentoSaverProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BentoSaverRef on NotifierProviderRef<BentoSavedState?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _BentoSaverProviderElement
    extends NotifierProviderElement<BentoSaver, BentoSavedState?>
    with BentoSaverRef {
  _BentoSaverProviderElement(super.provider);

  @override
  String get id => (origin as BentoSaverProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

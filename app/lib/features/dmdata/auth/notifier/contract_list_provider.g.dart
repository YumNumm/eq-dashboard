// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'contract_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$availableContractListHash() =>
    r'a3b985eea5482e8f88393c4c91bfd3cbcccd6b63';

/// すべての契約区分を取得する
///
/// Copied from [availableContractList].
@ProviderFor(availableContractList)
final availableContractListProvider =
    AutoDisposeFutureProvider<ContractListResponse>.internal(
  availableContractList,
  name: r'availableContractListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$availableContractListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AvailableContractListRef
    = AutoDisposeFutureProviderRef<ContractListResponse>;
String _$contractListHash() => r'07ad979eef21f0a99e645c757109970f77e19526';

/// 契約済みの契約区分を取得する
///
/// Copied from [contractList].
@ProviderFor(contractList)
final contractListProvider =
    AutoDisposeFutureProvider<ContractListResponse>.internal(
  contractList,
  name: r'contractListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$contractListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ContractListRef = AutoDisposeFutureProviderRef<ContractListResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

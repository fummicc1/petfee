// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'35836a6a855b3f5efb4d6c5ac15d1ff2b1197d49';

/// See also [AuthRepository].
@ProviderFor(AuthRepository)
final authRepositoryProvider = NotifierProvider<AuthRepository, User?>.internal(
  AuthRepository.new,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: <ProviderOrFamily>[authClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authClientProvider,
    ...?authClientProvider.allTransitiveDependencies
  },
);

typedef _$AuthRepository = Notifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

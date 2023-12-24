// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petRepositoryHash() => r'a036f8b45cf1c9015a4e8686898032b3e0a922fc';

/// See also [PetRepository].
@ProviderFor(PetRepository)
final petRepositoryProvider =
    NotifierProvider<PetRepository, List<Pet>>.internal(
  PetRepository.new,
  name: r'petRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petRepositoryHash,
  dependencies: <ProviderOrFamily>[storageProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storageProvider,
    ...?storageProvider.allTransitiveDependencies
  },
);

typedef _$PetRepository = Notifier<List<Pet>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

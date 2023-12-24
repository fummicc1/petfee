// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addNewPetControllerHash() =>
    r'b69871d6209aa088cb9a4d9b20850ea209b6ab20';

/// See also [AddNewPetController].
@ProviderFor(AddNewPetController)
final addNewPetControllerProvider =
    AutoDisposeNotifierProvider<AddNewPetController, AddNewPetState>.internal(
  AddNewPetController.new,
  name: r'addNewPetControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addNewPetControllerHash,
  dependencies: <ProviderOrFamily>[petRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    petRepositoryProvider,
    ...?petRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$AddNewPetController = AutoDisposeNotifier<AddNewPetState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

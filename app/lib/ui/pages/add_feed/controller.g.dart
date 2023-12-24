// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addFeedControllerHash() => r'e46bbc6013c37c8f3524cad8c66335f07a390343';

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

abstract class _$AddFeedController
    extends BuildlessAutoDisposeNotifier<AddFeedState> {
  late final AddFeedControllerInput input;

  AddFeedState build({
    required AddFeedControllerInput input,
  });
}

/// See also [AddFeedController].
@ProviderFor(AddFeedController)
const addFeedControllerProvider = AddFeedControllerFamily();

/// See also [AddFeedController].
class AddFeedControllerFamily extends Family<AddFeedState> {
  /// See also [AddFeedController].
  const AddFeedControllerFamily();

  /// See also [AddFeedController].
  AddFeedControllerProvider call({
    required AddFeedControllerInput input,
  }) {
    return AddFeedControllerProvider(
      input: input,
    );
  }

  @override
  AddFeedControllerProvider getProviderOverride(
    covariant AddFeedControllerProvider provider,
  ) {
    return call(
      input: provider.input,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    authRepositoryProvider,
    feedRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    authRepositoryProvider,
    ...?authRepositoryProvider.allTransitiveDependencies,
    feedRepositoryProvider,
    ...?feedRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addFeedControllerProvider';
}

/// See also [AddFeedController].
class AddFeedControllerProvider
    extends AutoDisposeNotifierProviderImpl<AddFeedController, AddFeedState> {
  /// See also [AddFeedController].
  AddFeedControllerProvider({
    required AddFeedControllerInput input,
  }) : this._internal(
          () => AddFeedController()..input = input,
          from: addFeedControllerProvider,
          name: r'addFeedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addFeedControllerHash,
          dependencies: AddFeedControllerFamily._dependencies,
          allTransitiveDependencies:
              AddFeedControllerFamily._allTransitiveDependencies,
          input: input,
        );

  AddFeedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final AddFeedControllerInput input;

  @override
  AddFeedState runNotifierBuild(
    covariant AddFeedController notifier,
  ) {
    return notifier.build(
      input: input,
    );
  }

  @override
  Override overrideWith(AddFeedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddFeedControllerProvider._internal(
        () => create()..input = input,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AddFeedController, AddFeedState>
      createElement() {
    return _AddFeedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddFeedControllerProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddFeedControllerRef on AutoDisposeNotifierProviderRef<AddFeedState> {
  /// The parameter `input` of this provider.
  AddFeedControllerInput get input;
}

class _AddFeedControllerProviderElement
    extends AutoDisposeNotifierProviderElement<AddFeedController, AddFeedState>
    with AddFeedControllerRef {
  _AddFeedControllerProviderElement(super.provider);

  @override
  AddFeedControllerInput get input =>
      (origin as AddFeedControllerProvider).input;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

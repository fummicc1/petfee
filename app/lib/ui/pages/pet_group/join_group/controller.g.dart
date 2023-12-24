// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinGroupControllerHash() =>
    r'9b04c180f7bd3582d7e49b1cf37685647597fe20';

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

abstract class _$JoinGroupController
    extends BuildlessAutoDisposeNotifier<JoinGroupState> {
  late final Pet pet;

  JoinGroupState build({
    required Pet pet,
  });
}

/// See also [JoinGroupController].
@ProviderFor(JoinGroupController)
const joinGroupControllerProvider = JoinGroupControllerFamily();

/// See also [JoinGroupController].
class JoinGroupControllerFamily extends Family<JoinGroupState> {
  /// See also [JoinGroupController].
  const JoinGroupControllerFamily();

  /// See also [JoinGroupController].
  JoinGroupControllerProvider call({
    required Pet pet,
  }) {
    return JoinGroupControllerProvider(
      pet: pet,
    );
  }

  @override
  JoinGroupControllerProvider getProviderOverride(
    covariant JoinGroupControllerProvider provider,
  ) {
    return call(
      pet: provider.pet,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    pushNotificationClientProvider,
    authRepositoryProvider,
    petRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    pushNotificationClientProvider,
    ...?pushNotificationClientProvider.allTransitiveDependencies,
    authRepositoryProvider,
    ...?authRepositoryProvider.allTransitiveDependencies,
    petRepositoryProvider,
    ...?petRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'joinGroupControllerProvider';
}

/// See also [JoinGroupController].
class JoinGroupControllerProvider extends AutoDisposeNotifierProviderImpl<
    JoinGroupController, JoinGroupState> {
  /// See also [JoinGroupController].
  JoinGroupControllerProvider({
    required Pet pet,
  }) : this._internal(
          () => JoinGroupController()..pet = pet,
          from: joinGroupControllerProvider,
          name: r'joinGroupControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$joinGroupControllerHash,
          dependencies: JoinGroupControllerFamily._dependencies,
          allTransitiveDependencies:
              JoinGroupControllerFamily._allTransitiveDependencies,
          pet: pet,
        );

  JoinGroupControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pet,
  }) : super.internal();

  final Pet pet;

  @override
  JoinGroupState runNotifierBuild(
    covariant JoinGroupController notifier,
  ) {
    return notifier.build(
      pet: pet,
    );
  }

  @override
  Override overrideWith(JoinGroupController Function() create) {
    return ProviderOverride(
      origin: this,
      override: JoinGroupControllerProvider._internal(
        () => create()..pet = pet,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pet: pet,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<JoinGroupController, JoinGroupState>
      createElement() {
    return _JoinGroupControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JoinGroupControllerProvider && other.pet == pet;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pet.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JoinGroupControllerRef on AutoDisposeNotifierProviderRef<JoinGroupState> {
  /// The parameter `pet` of this provider.
  Pet get pet;
}

class _JoinGroupControllerProviderElement
    extends AutoDisposeNotifierProviderElement<JoinGroupController,
        JoinGroupState> with JoinGroupControllerRef {
  _JoinGroupControllerProviderElement(super.provider);

  @override
  Pet get pet => (origin as JoinGroupControllerProvider).pet;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

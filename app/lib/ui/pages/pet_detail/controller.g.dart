// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petDetailControllerHash() =>
    r'085249021bf8670da94995bf4c5ffb6748f46174';

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

abstract class _$PetDetailController
    extends BuildlessAutoDisposeAsyncNotifier<PetDetailState> {
  late final Pet pet;
  late final List<Feed> feeds;

  FutureOr<PetDetailState> build({
    required Pet pet,
    required List<Feed> feeds,
  });
}

/// See also [PetDetailController].
@ProviderFor(PetDetailController)
const petDetailControllerProvider = PetDetailControllerFamily();

/// See also [PetDetailController].
class PetDetailControllerFamily extends Family<AsyncValue<PetDetailState>> {
  /// See also [PetDetailController].
  const PetDetailControllerFamily();

  /// See also [PetDetailController].
  PetDetailControllerProvider call({
    required Pet pet,
    required List<Feed> feeds,
  }) {
    return PetDetailControllerProvider(
      pet: pet,
      feeds: feeds,
    );
  }

  @override
  PetDetailControllerProvider getProviderOverride(
    covariant PetDetailControllerProvider provider,
  ) {
    return call(
      pet: provider.pet,
      feeds: provider.feeds,
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
  String? get name => r'petDetailControllerProvider';
}

/// See also [PetDetailController].
class PetDetailControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PetDetailController, PetDetailState> {
  /// See also [PetDetailController].
  PetDetailControllerProvider({
    required Pet pet,
    required List<Feed> feeds,
  }) : this._internal(
          () => PetDetailController()
            ..pet = pet
            ..feeds = feeds,
          from: petDetailControllerProvider,
          name: r'petDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$petDetailControllerHash,
          dependencies: PetDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              PetDetailControllerFamily._allTransitiveDependencies,
          pet: pet,
          feeds: feeds,
        );

  PetDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pet,
    required this.feeds,
  }) : super.internal();

  final Pet pet;
  final List<Feed> feeds;

  @override
  FutureOr<PetDetailState> runNotifierBuild(
    covariant PetDetailController notifier,
  ) {
    return notifier.build(
      pet: pet,
      feeds: feeds,
    );
  }

  @override
  Override overrideWith(PetDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PetDetailControllerProvider._internal(
        () => create()
          ..pet = pet
          ..feeds = feeds,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pet: pet,
        feeds: feeds,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PetDetailController, PetDetailState>
      createElement() {
    return _PetDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PetDetailControllerProvider &&
        other.pet == pet &&
        other.feeds == feeds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pet.hashCode);
    hash = _SystemHash.combine(hash, feeds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PetDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<PetDetailState> {
  /// The parameter `pet` of this provider.
  Pet get pet;

  /// The parameter `feeds` of this provider.
  List<Feed> get feeds;
}

class _PetDetailControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PetDetailController,
        PetDetailState> with PetDetailControllerRef {
  _PetDetailControllerProviderElement(super.provider);

  @override
  Pet get pet => (origin as PetDetailControllerProvider).pet;
  @override
  List<Feed> get feeds => (origin as PetDetailControllerProvider).feeds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

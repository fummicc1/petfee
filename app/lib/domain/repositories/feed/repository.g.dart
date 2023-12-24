// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedRepositoryHash() => r'777ff9f06cdcb0c0f41fdb6778d808d9cf455010';

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

abstract class _$FeedRepository extends BuildlessNotifier<List<Feed>> {
  late final Pet currentPet;

  List<Feed> build(
    Pet currentPet,
  );
}

/// See also [FeedRepository].
@ProviderFor(FeedRepository)
const feedRepositoryProvider = FeedRepositoryFamily();

/// See also [FeedRepository].
class FeedRepositoryFamily extends Family<List<Feed>> {
  /// See also [FeedRepository].
  const FeedRepositoryFamily();

  /// See also [FeedRepository].
  FeedRepositoryProvider call(
    Pet currentPet,
  ) {
    return FeedRepositoryProvider(
      currentPet,
    );
  }

  @override
  FeedRepositoryProvider getProviderOverride(
    covariant FeedRepositoryProvider provider,
  ) {
    return call(
      provider.currentPet,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    storageProvider,
    currentPetRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    storageProvider,
    ...?storageProvider.allTransitiveDependencies,
    currentPetRepositoryProvider,
    ...?currentPetRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'feedRepositoryProvider';
}

/// See also [FeedRepository].
class FeedRepositoryProvider
    extends NotifierProviderImpl<FeedRepository, List<Feed>> {
  /// See also [FeedRepository].
  FeedRepositoryProvider(
    Pet currentPet,
  ) : this._internal(
          () => FeedRepository()..currentPet = currentPet,
          from: feedRepositoryProvider,
          name: r'feedRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedRepositoryHash,
          dependencies: FeedRepositoryFamily._dependencies,
          allTransitiveDependencies:
              FeedRepositoryFamily._allTransitiveDependencies,
          currentPet: currentPet,
        );

  FeedRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.currentPet,
  }) : super.internal();

  final Pet currentPet;

  @override
  List<Feed> runNotifierBuild(
    covariant FeedRepository notifier,
  ) {
    return notifier.build(
      currentPet,
    );
  }

  @override
  Override overrideWith(FeedRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeedRepositoryProvider._internal(
        () => create()..currentPet = currentPet,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        currentPet: currentPet,
      ),
    );
  }

  @override
  NotifierProviderElement<FeedRepository, List<Feed>> createElement() {
    return _FeedRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedRepositoryProvider && other.currentPet == currentPet;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, currentPet.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FeedRepositoryRef on NotifierProviderRef<List<Feed>> {
  /// The parameter `currentPet` of this provider.
  Pet get currentPet;
}

class _FeedRepositoryProviderElement
    extends NotifierProviderElement<FeedRepository, List<Feed>>
    with FeedRepositoryRef {
  _FeedRepositoryProviderElement(super.provider);

  @override
  Pet get currentPet => (origin as FeedRepositoryProvider).currentPet;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

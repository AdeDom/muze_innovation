// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchDetailsHash() => r'd7fc5da8accb87b13b4d348f0fb0e08362d0ab9b';

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

/// See also [fetchDetails].
@ProviderFor(fetchDetails)
const fetchDetailsProvider = FetchDetailsFamily();

/// See also [fetchDetails].
class FetchDetailsFamily extends Family<AsyncValue<HomeModel?>> {
  /// See also [fetchDetails].
  const FetchDetailsFamily();

  /// See also [fetchDetails].
  FetchDetailsProvider call({
    String? id,
  }) {
    return FetchDetailsProvider(
      id: id,
    );
  }

  @override
  FetchDetailsProvider getProviderOverride(
    covariant FetchDetailsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'fetchDetailsProvider';
}

/// See also [fetchDetails].
class FetchDetailsProvider extends AutoDisposeFutureProvider<HomeModel?> {
  /// See also [fetchDetails].
  FetchDetailsProvider({
    String? id,
  }) : this._internal(
          (ref) => fetchDetails(
            ref as FetchDetailsRef,
            id: id,
          ),
          from: fetchDetailsProvider,
          name: r'fetchDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailsHash,
          dependencies: FetchDetailsFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  FetchDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String? id;

  @override
  Override overrideWith(
    FutureOr<HomeModel?> Function(FetchDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailsProvider._internal(
        (ref) => create(ref as FetchDetailsRef),
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
  AutoDisposeFutureProviderElement<HomeModel?> createElement() {
    return _FetchDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchDetailsRef on AutoDisposeFutureProviderRef<HomeModel?> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _FetchDetailsProviderElement
    extends AutoDisposeFutureProviderElement<HomeModel?> with FetchDetailsRef {
  _FetchDetailsProviderElement(super.provider);

  @override
  String? get id => (origin as FetchDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

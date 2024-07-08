// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thump_up_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$thumpUpControllerHash() => r'947e6056a1be915f181fa40dbc75d2cb312eb959';

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

abstract class _$ThumpUpController extends BuildlessAutoDisposeNotifier<bool> {
  late final String? id;

  bool build(
    String? id,
  );
}

/// See also [ThumpUpController].
@ProviderFor(ThumpUpController)
const thumpUpControllerProvider = ThumpUpControllerFamily();

/// See also [ThumpUpController].
class ThumpUpControllerFamily extends Family<bool> {
  /// See also [ThumpUpController].
  const ThumpUpControllerFamily();

  /// See also [ThumpUpController].
  ThumpUpControllerProvider call(
    String? id,
  ) {
    return ThumpUpControllerProvider(
      id,
    );
  }

  @override
  ThumpUpControllerProvider getProviderOverride(
    covariant ThumpUpControllerProvider provider,
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
  String? get name => r'thumpUpControllerProvider';
}

/// See also [ThumpUpController].
class ThumpUpControllerProvider
    extends AutoDisposeNotifierProviderImpl<ThumpUpController, bool> {
  /// See also [ThumpUpController].
  ThumpUpControllerProvider(
    String? id,
  ) : this._internal(
          () => ThumpUpController()..id = id,
          from: thumpUpControllerProvider,
          name: r'thumpUpControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$thumpUpControllerHash,
          dependencies: ThumpUpControllerFamily._dependencies,
          allTransitiveDependencies:
              ThumpUpControllerFamily._allTransitiveDependencies,
          id: id,
        );

  ThumpUpControllerProvider._internal(
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
  bool runNotifierBuild(
    covariant ThumpUpController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ThumpUpController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ThumpUpControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<ThumpUpController, bool> createElement() {
    return _ThumpUpControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ThumpUpControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ThumpUpControllerRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _ThumpUpControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ThumpUpController, bool>
    with ThumpUpControllerRef {
  _ThumpUpControllerProviderElement(super.provider);

  @override
  String? get id => (origin as ThumpUpControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

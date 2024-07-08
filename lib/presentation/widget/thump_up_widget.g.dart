// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thump_up_widget.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateThumpUpHash() => r'1106714ff5f69c3489ae74aa5ef5d517397abfab';

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

abstract class _$UpdateThumpUp extends BuildlessAutoDisposeNotifier<bool> {
  late final String? id;

  bool build(
    String? id,
  );
}

/// See also [UpdateThumpUp].
@ProviderFor(UpdateThumpUp)
const updateThumpUpProvider = UpdateThumpUpFamily();

/// See also [UpdateThumpUp].
class UpdateThumpUpFamily extends Family<bool> {
  /// See also [UpdateThumpUp].
  const UpdateThumpUpFamily();

  /// See also [UpdateThumpUp].
  UpdateThumpUpProvider call(
    String? id,
  ) {
    return UpdateThumpUpProvider(
      id,
    );
  }

  @override
  UpdateThumpUpProvider getProviderOverride(
    covariant UpdateThumpUpProvider provider,
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
  String? get name => r'updateThumpUpProvider';
}

/// See also [UpdateThumpUp].
class UpdateThumpUpProvider
    extends AutoDisposeNotifierProviderImpl<UpdateThumpUp, bool> {
  /// See also [UpdateThumpUp].
  UpdateThumpUpProvider(
    String? id,
  ) : this._internal(
          () => UpdateThumpUp()..id = id,
          from: updateThumpUpProvider,
          name: r'updateThumpUpProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateThumpUpHash,
          dependencies: UpdateThumpUpFamily._dependencies,
          allTransitiveDependencies:
              UpdateThumpUpFamily._allTransitiveDependencies,
          id: id,
        );

  UpdateThumpUpProvider._internal(
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
    covariant UpdateThumpUp notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UpdateThumpUp Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateThumpUpProvider._internal(
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
  AutoDisposeNotifierProviderElement<UpdateThumpUp, bool> createElement() {
    return _UpdateThumpUpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateThumpUpProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateThumpUpRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _UpdateThumpUpProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateThumpUp, bool>
    with UpdateThumpUpRef {
  _UpdateThumpUpProviderElement(super.provider);

  @override
  String? get id => (origin as UpdateThumpUpProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

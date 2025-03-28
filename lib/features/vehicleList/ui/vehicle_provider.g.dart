// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vehicleRepositoryHash() => r'621910bc747940a26e398464be0a700067460024';

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

/// See also [vehicleRepository].
@ProviderFor(vehicleRepository)
const vehicleRepositoryProvider = VehicleRepositoryFamily();

/// See also [vehicleRepository].
class VehicleRepositoryFamily extends Family<AsyncValue<Vehicle>> {
  /// See also [vehicleRepository].
  const VehicleRepositoryFamily();

  /// See also [vehicleRepository].
  VehicleRepositoryProvider call(int vehicleId) {
    return VehicleRepositoryProvider(vehicleId);
  }

  @override
  VehicleRepositoryProvider getProviderOverride(
    covariant VehicleRepositoryProvider provider,
  ) {
    return call(provider.vehicleId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'vehicleRepositoryProvider';
}

/// See also [vehicleRepository].
class VehicleRepositoryProvider extends AutoDisposeFutureProvider<Vehicle> {
  /// See also [vehicleRepository].
  VehicleRepositoryProvider(int vehicleId)
    : this._internal(
        (ref) => vehicleRepository(ref as VehicleRepositoryRef, vehicleId),
        from: vehicleRepositoryProvider,
        name: r'vehicleRepositoryProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$vehicleRepositoryHash,
        dependencies: VehicleRepositoryFamily._dependencies,
        allTransitiveDependencies:
            VehicleRepositoryFamily._allTransitiveDependencies,
        vehicleId: vehicleId,
      );

  VehicleRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vehicleId,
  }) : super.internal();

  final int vehicleId;

  @override
  Override overrideWith(
    FutureOr<Vehicle> Function(VehicleRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VehicleRepositoryProvider._internal(
        (ref) => create(ref as VehicleRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vehicleId: vehicleId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Vehicle> createElement() {
    return _VehicleRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VehicleRepositoryProvider && other.vehicleId == vehicleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vehicleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VehicleRepositoryRef on AutoDisposeFutureProviderRef<Vehicle> {
  /// The parameter `vehicleId` of this provider.
  int get vehicleId;
}

class _VehicleRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<Vehicle>
    with VehicleRepositoryRef {
  _VehicleRepositoryProviderElement(super.provider);

  @override
  int get vehicleId => (origin as VehicleRepositoryProvider).vehicleId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

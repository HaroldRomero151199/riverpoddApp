// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'fc324e758bd53671cecd536c9d1bc1221ae554dc';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonByIdHash() => r'20c2bbdd61d6c07c568f726998d4c33447c53c2b';

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

/// See also [pokemonById].
@ProviderFor(pokemonById)
const pokemonByIdProvider = PokemonByIdFamily();

/// See also [pokemonById].
class PokemonByIdFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonById].
  const PokemonByIdFamily();

  /// See also [pokemonById].
  PokemonByIdProvider call(
    int id,
  ) {
    return PokemonByIdProvider(
      id,
    );
  }

  @override
  PokemonByIdProvider getProviderOverride(
    covariant PokemonByIdProvider provider,
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
  String? get name => r'pokemonByIdProvider';
}

/// See also [pokemonById].
class PokemonByIdProvider extends FutureProvider<String> {
  /// See also [pokemonById].
  PokemonByIdProvider(
    int id,
  ) : this._internal(
          (ref) => pokemonById(
            ref as PokemonByIdRef,
            id,
          ),
          from: pokemonByIdProvider,
          name: r'pokemonByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonByIdHash,
          dependencies: PokemonByIdFamily._dependencies,
          allTransitiveDependencies:
              PokemonByIdFamily._allTransitiveDependencies,
          id: id,
        );

  PokemonByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonByIdProvider._internal(
        (ref) => create(ref as PokemonByIdRef),
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
  FutureProviderElement<String> createElement() {
    return _PokemonByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonByIdRef on FutureProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PokemonByIdProviderElement extends FutureProviderElement<String>
    with PokemonByIdRef {
  _PokemonByIdProviderElement(super.provider);

  @override
  int get id => (origin as PokemonByIdProvider).id;
}

String _$pokemonIdHash() => r'48ad784898079ac7707721aa2826ee2430c7490b';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

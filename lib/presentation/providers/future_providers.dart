import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final idPokemon = ref.watch(pokemonIdProvider);
  final pokemName = await PokemonInformation.getPokemonName(idPokemon);
  ref.onDispose(() {});
  return pokemName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void increment() => state++;
  void previus() {
    state > 1 ? state-- : 1;
  }
}

@Riverpod(keepAlive: true)
Future<String> pokemonById (PokemonByIdRef ref, int id) async  {
  final pokemName = await PokemonInformation.getPokemonName(id);
  return pokemName;
}


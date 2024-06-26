import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final namePokemon = ref.watch(pokemonNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: namePokemon.when(
            data: (data) => Text(data),
            error: (error, stackTrace) => Text('$error'),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn-1',
            child: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).increment();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.minimize),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).previus();
            },
          ),
        ],
      ),
    );
  }
}

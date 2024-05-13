import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/future_providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  var num = 3;
  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonByIdProvider(num));
    return Scaffold(
      appBar: AppBar(
        title: Text('id pokemon : $num'),
      ),
      body: pokemonAsync.when(
          data: (data) => Text(data),
          error: (error, stackTrace) => Text('$error'),
          loading: () => const CircularProgressIndicator()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn-1',
            child: const Icon(Icons.add),
            onPressed: () {
              num++;
              setState(() {});
              // ref.read(pokemonIdProvider.notifier).increment();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.minimize),
            onPressed: () {
              num--;
              setState(() {});
              // ref.read(pokemonIdProvider.notifier).previus();
            },
          ),
        ],
      ),
    );
  }
}

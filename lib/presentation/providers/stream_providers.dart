import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part "stream_providers.g.dart";

@Riverpod(keepAlive: true)
Stream<List<String>> usersIsChat(UsersIsChatRef ref) async* {
  final names = <String>[];
  //yield names; si ya queremos que genera inmediatamente
  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
}

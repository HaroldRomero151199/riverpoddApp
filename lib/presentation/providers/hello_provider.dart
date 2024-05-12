import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_provider.g.dart';

@riverpod
String helloWord(HelloWordRef ref) {
  return "Hello World";
}

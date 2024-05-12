import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'states_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  int incremet() => state++;
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toogleDarkMode() {
    state = !state;
  }
}

@riverpod
class Username extends _$Username {
  @override
  String build() {
    return "Harold Romero";
  }

  void changeName(String name){
    state = name;
  }
}

import 'package:core/core.dart';

abstract class DependencyRegister {
  Future<void> register(Injection injection);
}

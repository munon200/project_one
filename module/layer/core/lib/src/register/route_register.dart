import 'package:core/core.dart';

abstract class RouteRegister<Route, Settings> {
  Route? generate(Settings settings, Injection injection) {
    return null;
  }
}

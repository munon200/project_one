import 'package:core/core.dart';

abstract class Bootstrap<Route, Settings> {
  bool isSupport(RouteRegister<Route, Settings> routeRegister, Settings currentSettings);
}

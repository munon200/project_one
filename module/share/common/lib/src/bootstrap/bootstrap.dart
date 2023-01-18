import 'package:common/src/register/dependency_register.dart';
import 'package:common/src/register/route_register.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void complete(GenerateRoute<Route, RouteSettings> onGenerate);

  void boot() async {
    Injection injection = Injection.I;

    for (var dependency in dependencies) {
      await dependency.register(injection);
    }

    complete(
      (settings) {
        for (var route in routes) {
          if (route.contains(settings)) {
            return route.register(settings, injection);
          }
        }
      },
    );
  }
}

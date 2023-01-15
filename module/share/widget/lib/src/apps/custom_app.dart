import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomApp extends StatelessWidget {
  final ThemeMode? themeMode;
  final String initRoute;
  final Route? Function(RouteSettings) onGenerateRoute;

  const CustomApp({
    Key? key,
    this.themeMode,
    required this.initRoute,
    required this.onGenerateRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Route =====
      initialRoute: initRoute,
      onGenerateRoute: onGenerateRoute,
      // Theme =====
      themeMode: themeMode,
      theme: CustomAppTheme.light,
      darkTheme: CustomAppTheme.dark,
    );
  }
}

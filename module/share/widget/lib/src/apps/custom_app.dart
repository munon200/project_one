import 'package:content/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<LanguageCubit, LanguageState>(
      bloc: LanguageCubit.I,
      buildWhen: isRebuild,
      builder: (context, state) {
        return MaterialApp(
          // Route =====
          initialRoute: initRoute,
          onGenerateRoute: onGenerateRoute,
          // Theme =====
          themeMode: themeMode,
          theme: CustomTheme.light,
          darkTheme: CustomTheme.dark,
          // Default
          home: Scaffold(),
        );
      },
    );
  }

  bool isRebuild(LanguageState? previous, LanguageState? current) {
    return previous?.lang != current?.lang;
  }
}

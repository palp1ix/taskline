import 'package:flutter/material.dart';
import 'package:taskline/core/router/router.dart';
import 'package:taskline/shared/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter().getRouterConfig(),
        debugShowCheckedModeBanner: false);
  }
}

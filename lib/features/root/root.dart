import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskline/features/root/widgets/app_nav_bar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: navigationShell,
        bottomNavigationBar: AppNavBar(navigationShell: navigationShell));
  }
}

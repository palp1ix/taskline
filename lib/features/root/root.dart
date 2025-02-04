import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            height: 50,
            indicatorColor: Colors.transparent,
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (index) {
              navigationShell.goBranch(index);
            },
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    LineIcons.home,
                    size: 30,
                  ),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(
                    LineIcons.search,
                    size: 30,
                  ),
                  label: "Search"),
              NavigationDestination(
                  icon: Icon(
                    LineIcons.facebookMessenger,
                    size: 30,
                  ),
                  label: "Message"),
              NavigationDestination(
                  icon: Icon(
                    LineIcons.user,
                    size: 30,
                  ),
                  label: "Profile"),
            ]));
  }
}

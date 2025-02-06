import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 50,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(index);
        },
        destinations: [
          NavigationDestination(
              icon: Icon(
                LineIcons.home,
                size: 27,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(
                LineIcons.search,
                size: 27,
              ),
              label: "Search"),
          NavigationDestination(
              icon: Icon(
                LineIcons.facebookMessenger,
                size: 27,
              ),
              label: "Message"),
          NavigationDestination(
              icon: Icon(
                LineIcons.user,
                size: 27,
              ),
              label: "Profile"),
        ]);
  }
}

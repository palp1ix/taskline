import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface, BlendMode.srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.primary, BlendMode.srcIn),
              ),
              label: "Home"),
          NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface, BlendMode.srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.primary, BlendMode.srcIn),
              ),
              label: "Search"),
          NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/chats.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface, BlendMode.srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/chats.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.primary, BlendMode.srcIn),
              ),
              label: "Message"),
          NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface, BlendMode.srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/user.svg',
                width: 27,
                height: 27,
                colorFilter: ColorFilter.mode(
                    theme.colorScheme.primary, BlendMode.srcIn),
              ),
              label: "Profile"),
        ]);
  }
}

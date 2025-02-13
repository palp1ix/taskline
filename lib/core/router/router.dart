import 'package:go_router/go_router.dart';
import 'package:taskline/features/home/presentation/home.dart';
import 'package:taskline/features/root/root.dart';

class AppRouter {
  GoRouter getRouterConfig() {
    return _router;
  }

  final _router = GoRouter(
    initialLocation: '/home',
    routes: [
      // BottomNavigationBar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            RootScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

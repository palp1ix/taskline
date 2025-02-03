import 'package:go_router/go_router.dart';
import 'package:taskline/features/home/presentation/home.dart';

class AppRouter {
  GoRouter getRouterConfig() {
    return _router;
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}

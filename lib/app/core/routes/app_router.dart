
import 'package:go_router/go_router.dart';

import 'type_safe_routes.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: const LoginRoute().location,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
  );
}

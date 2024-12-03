import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/features/views.dart';

part 'type_safe_routes.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashPage();
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedStatefulShellRoute<TeacherHomeShellRoute>(
  branches: [
    TypedStatefulShellBranch<DashboardBranchRoute>(
      routes: [
        TypedGoRoute<DashboardRoute>(path: '/dashboard'),
      ],
    ),
    // TypedStatefulShellBranch<DatabaseBranch>(routes: [
    //   TypedGoRoute<DatabaseRoute>(path: '/database',routes: [
    //     TypedGoRoute<AssignedTasksRoute>(path: '/assigned-tasks'),
    //   ]),
    // ]),
  ],
)
class TeacherHomeShellRoute extends StatefulShellRouteData {
  const TeacherHomeShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return TeacherHomeShellPage(
      navigationShell: navigationShell,
    );
  }
}

class DashboardBranchRoute extends StatefulShellBranchData {
  const DashboardBranchRoute();
}

class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

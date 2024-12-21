import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/features/teacher/academics/views/academics_page.dart';
import 'package:gcm/app/presentation/features/teacher/notification/views/notification_page.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/features/teacher/reports/views/reports_page.dart';
import '../../presentation/features/teacher/setting/views/setting_page.dart';
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
    TypedStatefulShellBranch<AcademicsBranchRoute>(
      routes: [
        TypedGoRoute<AcademicsRoute>(path: '/academics'),
      ],
    ),
    TypedStatefulShellBranch<ReportsBranchRoute>(
      routes: [
        TypedGoRoute<ReportsRoute>(path: '/reports'),
      ],
    ),
    TypedStatefulShellBranch<NotificationBranchRoute>(
      routes: [
        TypedGoRoute<NotificationRoute>(path: '/notifications'),
      ],
    ),
    TypedStatefulShellBranch<SettingBranchRoute>(
      routes: [
        TypedGoRoute<SettingRoute>(path: '/setting'),
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

class NotificationBranchRoute extends StatefulShellBranchData {
  const NotificationBranchRoute();
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotificationPage();
  }
}

class ReportsBranchRoute extends StatefulShellBranchData {
  const ReportsBranchRoute();
}

class ReportsRoute extends GoRouteData {
  const ReportsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ReportsPage();
  }
}

class SettingBranchRoute extends StatefulShellBranchData {
  const SettingBranchRoute();
}

class SettingRoute extends GoRouteData {
  const SettingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingPage();
  }
}

class AcademicsBranchRoute extends StatefulShellBranchData {
  const AcademicsBranchRoute();
}

class AcademicsRoute extends GoRouteData {
  const AcademicsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AcademicsPage();
  }
}

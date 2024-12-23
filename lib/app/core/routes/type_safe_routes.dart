import 'package:flutter/material.dart';
import 'package:gcm/app/presentation/features/admin/Teachers/views/teacher_management_page.dart';
import 'package:gcm/app/presentation/features/admin/dashboard/views/admin_dashboard_page.dart';
import 'package:gcm/app/presentation/features/admin/home/admin_home_shell.dart';
import 'package:gcm/app/presentation/features/teacher/academics/views/academics_page.dart';
import 'package:gcm/app/presentation/features/teacher/notification/views/notification_page.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/features/teacher/reports/views/reports_page.dart';
import '../../presentation/features/teacher/setting/views/setting_page.dart';
import '../../presentation/features/views.dart';

part 'type_safe_routes.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

/// -----------------------------
/// Root Routes (Splash & Login)
/// -----------------------------

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

/// -----------------------------
/// Shell Routes for Teacher
/// -----------------------------

@TypedStatefulShellRoute<TeacherHomeShellRoute>(
  branches: [
    // Dashboard Branch
    TypedStatefulShellBranch<DashboardBranchRoute>(
      routes: [
        TypedGoRoute<DashboardRoute>(path: '/dashboard'),
      ],
    ),
    // Academics Branch
    TypedStatefulShellBranch<AcademicsBranchRoute>(
      routes: [
        TypedGoRoute<AcademicsRoute>(path: '/academics'),
      ],
    ),
    // Reports Branch
    TypedStatefulShellBranch<ReportsBranchRoute>(
      routes: [
        TypedGoRoute<ReportsRoute>(path: '/reports'),
      ],
    ),
    // Notification Branch
    TypedStatefulShellBranch<NotificationBranchRoute>(
      routes: [
        TypedGoRoute<NotificationRoute>(path: '/notifications'),
      ],
    ),
    // Setting Branch
    TypedStatefulShellBranch<SettingBranchRoute>(
      routes: [
        TypedGoRoute<SettingRoute>(path: '/setting'),
      ],
    ),
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

/// -----------------------------
/// Shell Routes for Admin
/// -----------------------------

@TypedStatefulShellRoute<AdminHomeShellRoute>(
  branches: [
    // Admin Dashboard Branch
    TypedStatefulShellBranch<AdminDashboardBranchRoute>(
      routes: [
        TypedGoRoute<AdminDashboardRoute>(path: '/admin-dashboard'),
      ],
    ),
    TypedStatefulShellBranch<TeacherManagemenetBranchRoute>(
      routes: [
        TypedGoRoute<TeacherManagemenetRoute>(path: '/teacher'),
      ],
    ),
  ],
)
class AdminHomeShellRoute extends StatefulShellRouteData {
  const AdminHomeShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return AdminHomeShellPage(
      navigationShell: navigationShell,
    );
  }
}

/// -----------------------------
/// Branch Routes for Teacher
/// -----------------------------

class DashboardBranchRoute extends StatefulShellBranchData {
  const DashboardBranchRoute();
}

class AcademicsBranchRoute extends StatefulShellBranchData {
  const AcademicsBranchRoute();
}

class ReportsBranchRoute extends StatefulShellBranchData {
  const ReportsBranchRoute();
}

class NotificationBranchRoute extends StatefulShellBranchData {
  const NotificationBranchRoute();
}

class SettingBranchRoute extends StatefulShellBranchData {
  const SettingBranchRoute();
}

/// -----------------------------
/// Routes for Teacher
/// -----------------------------

class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

class AcademicsRoute extends GoRouteData {
  const AcademicsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AcademicsPage();
  }
}

class ReportsRoute extends GoRouteData {
  const ReportsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ReportsPage();
  }
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotificationPage();
  }
}

class SettingRoute extends GoRouteData {
  const SettingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingPage();
  }
}

/// -----------------------------
/// Branch Routes for Admin
/// -----------------------------

class AdminDashboardBranchRoute extends StatefulShellBranchData {
  const AdminDashboardBranchRoute();
}

class TeacherManagemenetBranchRoute extends StatefulShellBranchData {
  const TeacherManagemenetBranchRoute();
}

/// -----------------------------
/// Routes for Admin
/// -----------------------------

class AdminDashboardRoute extends GoRouteData {
  const AdminDashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdminDashboardPage();
  }
}

class TeacherManagemenetRoute extends GoRouteData {
  const TeacherManagemenetRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TeacherManagementPage();
  }
}

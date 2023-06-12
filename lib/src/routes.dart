import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/blog_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/dashboard_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/home_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/login_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/logout_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/profile_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/register_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_details_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_list_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/settings_page.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_shell.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final routes = [
    RouteParams(
        path: '/',
        builder: (context, state) => const HomePage(),
        private: false),
    RouteParams(
        path: '/sample_item',
        builder: (context, state) => const SampleItemListPage(),
        private: false),
    RouteParams(
        path: '/sample_item/:id',
        builder: (context, state) => const SampleItemDetailsPage(),
        private: false),
    RouteParams(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
        private: false),
    RouteParams(
        path: '/register',
        builder: (context, state) =>
            const RegisterPage(type: CustomerRoleType.Investor),
        private: false),
    RouteParams(
        path: '/register/:type',
        builder: (context, state) => RegisterPage(
            type: CustomerRoleType.values
                .byName(state.pathParameters['type'] ?? "Investor")),
        private: false),
    RouteParams(
        path: '/login',
        builder: (context, state) => const LoginPage(),
        private: false),
    RouteParams(
        path: '/blog',
        builder: (context, state) => const BlogPage(),
        private: false),
    RouteParams(
        path: '/dashboard',
        builder: (context, state) => const DashboardPage(),
        private: true),
    RouteParams(
        path: '/logout',
        builder: (context, state) => const LogoutPage(),
        private: true),
    RouteParams(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
        private: true),
  ];
  static final routeSet = routes.toSet();
  static final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppShell(
            child: child,
          );
        },
        routes: routes
            .map((e) => GoRoute(path: e.path, builder: e.builder))
            .toList(),
      )
    ],
  );
  static GoRouter get router => _router;
}

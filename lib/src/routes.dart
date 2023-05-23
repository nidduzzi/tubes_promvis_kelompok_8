import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/app.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/blog_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/dashboard_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/home_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/login_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/register_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_details_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_list_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/settings_page.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_controller.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_shell.dart';

class AppRouter {
  static final SettingsController settingsController =
      P2PApp.settingsController;
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppShell(
            settingsController: settingsController,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/sample_item',
            builder: (context, state) => const SampleItemListPage(),
          ),
          GoRoute(
            path: '/sample_item/:id',
            builder: (context, state) => const SampleItemDetailsPage(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) =>
                SettingsPage(controller: settingsController),
          ),
          GoRoute(
            path: '/register',
            builder: (context, state) =>
                const RegisterPage(type: RegisterPageType.Investor),
          ),
          GoRoute(
            path: '/register/:type',
            builder: (context, state) => RegisterPage(
                type: RegisterPageType.values
                    .byName(state.pathParameters['type'] ?? "UMKM")),
          ),
          GoRoute(
            path: '/register/:type',
            builder: (context, state) => RegisterPage(
                type: RegisterPageType.values
                    .byName(state.pathParameters['type'] ?? "UMKM")),
          ),
          GoRoute(
            path: '/login',
            builder: (context, state) => LoginPage(),
          ),
          GoRoute(
            path: '/blog',
            builder: (context, state) => BlogPage(),
          ),
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => DashboardPage(),
          ),
        ],
      )
    ],
  );
  static GoRouter get router => _router;
}

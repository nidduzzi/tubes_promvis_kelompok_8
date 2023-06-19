import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/blog_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/create_investment_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/csmessage_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/customer_message_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/home_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/login_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/logout_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/portofolio_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/profile_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/proposal_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/register_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_details_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/sample_item_list_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/settings_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/view_proposal_page.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_shell.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final routes = [
    RouteParams(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'sample item list',
      path: '/sample_item',
      builder: (context, state) => const SampleItemListPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'sample item detail',
      path: '/sample_item/:id',
      builder: (context, state) => const SampleItemDetailsPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'customer service',
      path: '/customer_service',
      builder: (context, state) => const CSPage(),
      allowedRoles: ['me'],
    ),
    RouteParams(
      name: 'cs dashboard',
      path: '/customer_message',
      builder: (context, state) => const CustomerMessagePage(),
      allowedRoles: ['cs', 'admin'],
    ),
    RouteParams(
      name: 'settings',
      path: '/settings',
      builder: (context, state) => SettingsPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'register default',
      path: '/register',
      redirect: '/register/${CustomerRoleType.Investor}',
      builder: (context, state) =>
          const RegisterPage(type: CustomerRoleType.Investor),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'register',
      path: '/register/:type',
      builder: (context, state) => RegisterPage(
          type: CustomerRoleType.values
              .byName(state.pathParameters['type'] ?? "Investor")),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'create proposal',
      path: '/proposal/create',
      builder: (context, state) => const ProposalPage(),
      allowedRoles: ['umkm', 'admin', 'cs'],
    ),
    RouteParams(
      name: 'view proposal',
      path: '/proposal',
      builder: (context, state) => const ViewProposalPage(),
      allowedRoles: ['umkm', 'investor', 'admin', 'cs'],
    ),
    RouteParams(
      name: 'invest proposal',
      path: '/proposal/:proposalId/invest',
      builder: (context, state) {
        return CreateProposalInvestmentPage(
          proposalId: int.parse(state.pathParameters['proposalId'] ?? '-1'),
        );
      },
      allowedRoles: ['investor'],
    ),
    RouteParams(
      name: 'blog',
      path: '/blog',
      builder: (context, state) => const BlogPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'logout',
      path: '/logout',
      builder: (context, state) => const LogoutPage(),
      allowedRoles: [],
    ),
    RouteParams(
      name: 'profile',
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
      allowedRoles: ['me'],
    ),
    RouteParams(
      name: 'portofolio',
      path: '/portofolio',
      builder: (context, state) => const PortofolioPage(),
      allowedRoles: ['umkm', 'investor', 'cs', 'admin'],
    ),
    RouteParams(
      name: 'talker',
      path: '/talker',
      builder: (context, state) => TalkerScreen(talker: Logger.talker),
      allowedRoles: [],
    ),
    // RouteParams(
    //   name: 'approve proposal',
    //   path: '/proposal/:proposalId/approve',
    //   builder: (context, state) {
    //     return ApprovalConfirmationDialog(
    //       proposalId:
    //           int.tryParse(state.pathParameters['proposalId'] ?? "") ?? -1,
    //     );
    //   },
    //   allowedRoles: ['cs', 'admin'],
    // ),
  ];
  static final routeSet = routes.toSet();

  static List<GoRoute> getRoutes(List<RouteParams> routeParams) {
    return routeParams.map((routeParam) {
      return GoRoute(
          name: routeParam.name,
          path: routeParam.path,
          builder: routeParam.builder,
          routes: getRoutes(routeParam.children));
    }).toList();
  }

  // deprecate
  // static Iterable<RouteParams> whereRouteParams(
  //     List<RouteParams> routeParams, bool Function(RouteParams) callback) {
  //   final siblingResult = routeParams.where((element) => callback(element));
  //   final childrenResult = routeParams
  //       .map((e) => whereRouteParams(e.children, callback))
  //       .reduce((value, element) => [...value, ...element]);
  //   return [...siblingResult, ...childrenResult];
  // }

  static GoRouter getRouter(AppAuthState appAuthState) {
    final router = GoRouter(
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
          routes: getRoutes(routes),
        )
      ],
      redirect: (context, state) {
        final loginLoc = state.namedLocation('login');
        final homeLoc = state.namedLocation('home');
        final fromLoc = state.queryParameters['from'];
        final redirectError = state.error;
        if (redirectError != null) {
          Logger.talker.error(redirectError);
        }
        // ignore: unnecessary_nullable_for_final_variable_declarations
        final RouteParams? routeParam;
        {
          final routeParams = state.fullPath != null
              ? routes.where((routeParams) {
                  return routeParams.path == state.fullPath;
                })
              : routes.where((routeParams) => homeLoc == routeParams.path);
          if (routeParams.isEmpty) {
            throw Exception('routeParams in AppRouter.getRouter() is empty');
          }
          routeParam = routeParams.first;
        }

        final auth = NhostAuthProvider.of(context);
        if (auth == null) {
          throw Exception(
              'auth is null in route params builder of path ${routeParam.path}');
        }

        Logger.talker.info("###### in redirect ${routeParam.path} ######");
        final authState = appAuthState.authState;
        String? redirectTo;
        Logger.talker.info("###### authState ${authState.toString()} ######");
        switch (authState) {
          case AuthenticationState.signedIn:
            if (routeParam.name == 'login') {
              redirectTo = fromLoc ?? homeLoc;
            } else if (routeParam.allowedRoles.isNotEmpty &&
                !isRoleAppAuthState(appAuthState, routeParam.allowedRoles)) {
              Logger.talker.log(
                  'route ${routeParam.path} is restricted, redirecting to home. allowed roles (${routeParam.allowedRoles.join(', ')})');
              redirectTo = homeLoc;
            } else {
              Logger.talker.log('user passed authguard signed in');
            }
            break;
          case AuthenticationState.signedOut:
            if (routeParam.name == 'logout') {
              redirectTo = fromLoc ?? homeLoc;
            } else if (routeParam.allowedRoles.isNotEmpty) {
              Logger.talker.log(
                  'route ${routeParam.path} is private, redirecting to login. allowed roles (${routeParam.allowedRoles.join(', ')})');
              redirectTo = loginLoc;
            } else {
              Logger.talker.log('user passed authguard signed out');
            }
            break;
          default:
            Logger.talker.error(auth);
        }

        Logger.talker.info("###### redirectTo $redirectTo ######");
        Logger.talker.info("###### out redirect ${routeParam.path} ######");

        return redirectTo;
      },
      redirectLimit: 6,
    );
    return router;
  }
}

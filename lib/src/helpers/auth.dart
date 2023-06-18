import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';

bool isRouteAllowed(BuildContext context, RouteParams routeParam) {
  final appAuthState = Provider.of<AppAuthState>(context);
  return isRouteAllowedAppAuthState(appAuthState, routeParam);
}

bool isAdmin(BuildContext context) {
  return isRole(context, ['admin']);
}

bool isCS(BuildContext context) {
  return isRole(context, ['cs']);
}

bool isCSPlus(BuildContext context) {
  return isRole(context, ['admin', 'cs']);
}

bool isUMKM(BuildContext context) {
  return isRole(context, ['umkm']);
}

bool isInvestor(BuildContext context) {
  return isRole(context, ['investor']);
}

bool isCustomer(BuildContext context) {
  return isRole(context, ['investor', 'umkm']);
}

bool isSignedOut(BuildContext context) {
  return isAuthState(context, AuthenticationState.signedOut);
}

bool isSignedIn(BuildContext context) {
  return isAuthState(context, AuthenticationState.signedIn);
}

bool isAuthLoading(BuildContext context) {
  return isAuthState(context, AuthenticationState.inProgress);
}

bool isAuthState(BuildContext context, AuthenticationState state) {
  final auth = NhostAuthProvider.of(context);
  if (auth == null) {
    throw Exception('auth is null in isAuthState');
  }
  final appAuthState = Provider.of<AppAuthState>(context);
  return isAuthStateAppAuthState(appAuthState, state);
}

bool isRole(BuildContext context, List<String> roles, {bool useAny = true}) {
  if (roles.isEmpty) return true;
  final auth = NhostAuthProvider.of(context);
  if (auth == null) {
    throw Exception('auth is null in isRole');
  }
  final appAuthState = Provider.of<AppAuthState>(context);
  return isRoleAppAuthState(appAuthState, roles);
}

bool isRouteAllowedAppAuthState(
    AppAuthState appAuthState, RouteParams routeParam) {
  final authState = appAuthState.authState;
  bool isAllowed = false;
  switch (authState) {
    case AuthenticationState.signedIn:
      if (routeParam.allowedRoles.isNotEmpty &&
          !isRoleAppAuthState(appAuthState, routeParam.allowedRoles)) {
        Logger.talker.log(
            'route ${routeParam.path} is restricted, allowed roles (${routeParam.allowedRoles.join(', ')})');
      } else {
        Logger.talker.log('user passed authguard signed in');
        isAllowed = true;
      }
      break;
    case AuthenticationState.signedOut:
      if (routeParam.allowedRoles.isNotEmpty) {
        Logger.talker.log(
            'route ${routeParam.path} is private, allowed roles (${routeParam.allowedRoles.join(', ')})');
      } else {
        Logger.talker.log('user passed authguard signed out');
        isAllowed = true;
      }
      break;
    case AuthenticationState.inProgress:
      if (routeParam.allowedRoles.isNotEmpty) {
        Logger.talker.log(
            'route ${routeParam.path} is private, allowed roles (${routeParam.allowedRoles.join(', ')})');
      } else {
        Logger.talker.log('user passed authguard signed out');
        isAllowed = true;
      }
      break;
    default:
      Logger.talker.error(appAuthState);
  }
  return isAllowed;
}

bool isAdminAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['admin']);
}

bool isCSAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['cs']);
}

bool isCSPlusAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['admin', 'cs']);
}

bool isUMKMAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['umkm']);
}

bool isInvestorAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['investor']);
}

bool isCustomerAppAuthState(AppAuthState appAuthState) {
  return isRoleAppAuthState(appAuthState, ['investor', 'umkm']);
}

bool isSignedOutAppAuthState(AppAuthState appAuthState) {
  return isAuthStateAppAuthState(appAuthState, AuthenticationState.signedOut);
}

bool isSignedInAppAuthState(AppAuthState appAuthState) {
  return isAuthStateAppAuthState(appAuthState, AuthenticationState.signedIn);
}

bool isAuthLoadingAppAuthState(AppAuthState appAuthState) {
  return isAuthStateAppAuthState(appAuthState, AuthenticationState.inProgress);
}

bool isAuthStateAppAuthState(
    AppAuthState appAuthState, AuthenticationState state) {
  return appAuthState.authState == state;
}

bool isRoleAppAuthState(AppAuthState appAuthState, List<String> roles,
    {bool useAny = true}) {
  if (roles.isEmpty) return true;
  final auth = appAuthState.nhostClient.auth;
  if (!isSignedInAppAuthState(appAuthState)) {
    return false;
  }
  final user = auth.currentUser;
  if (user == null) throw Exception('user is empty in isRole');
  final joinFunction = useAny
      ? (bool Function(String) callback) => roles.any(callback)
      : (bool Function(String) callback) => roles.every(callback);
  final result = joinFunction((role) => user.roles.contains(role));
  return result;
}

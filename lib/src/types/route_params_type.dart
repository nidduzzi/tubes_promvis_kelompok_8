import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteNavbarParams {
  String path;
  IconData icon;
  String label;
  String title;
  List<String> allowedRoles;
  bool publicOnly; // flag if navbar item shouldn't appear when logged in
  RouteNavbarParams({
    required this.path,
    required this.icon,
    required this.label,
    required this.title,
    this.allowedRoles = const [],
    this.publicOnly = false,
  }) {
    assert(!(allowedRoles.isNotEmpty && publicOnly == true),
        "Route navbar params cannot be both private (allowedRoles not empty) and publicOnly=true");
  }

  @override
  bool operator ==(Object other) =>
      other is RouteParams &&
      other.runtimeType == runtimeType &&
      other.path == path;

  @override
  int get hashCode => path.hashCode;
}

class RouteParams {
  String name;
  String path;
  String? redirect;
  Widget Function(BuildContext context, GoRouterState state)
      builder; // path page

  List<String> allowedRoles;
  bool publicOnly; // flag if route can't be accessed when logged in
  List<RouteParams> children;

  RouteParams({
    required this.name,
    required this.path,
    this.redirect,
    required this.builder,
    this.allowedRoles = const [],
    this.publicOnly = false,
    this.children = const [],
  }) {
    if (allowedRoles.isNotEmpty && publicOnly == true) {
      throw Exception(
          "Route params cannot be both private (allowedRoles not empty) and publicOnly=true");
    }
  }

  @override
  bool operator ==(Object other) =>
      other is RouteParams &&
      other.runtimeType == runtimeType &&
      other.path == path;

  @override
  int get hashCode => path.hashCode;
}

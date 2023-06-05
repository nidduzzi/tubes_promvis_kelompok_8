import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteNavbarParams {
  String path;
  IconData icon;
  String label;
  String title;
  bool private; // flag if navbar item should only appear when logged in
  bool publicOnly; // flag if navbar item shouldn't appear when logged in
  RouteNavbarParams(
      {required this.path,
      required this.icon,
      required this.label,
      required this.title,
      this.private = true,
      this.publicOnly = false}) {
    assert(!(private == true && publicOnly == true),
        "Route navbar params cannot be both private=true and publicOnly=true");
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
  String path;
  Widget Function(BuildContext context, GoRouterState state)
      builder; // path page
  bool private;
  RouteParams({required this.path, required this.builder, this.private = true});

  @override
  bool operator ==(Object other) =>
      other is RouteParams &&
      other.runtimeType == runtimeType &&
      other.path == path;

  @override
  int get hashCode => path.hashCode;
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';

int? getCurrentIndex(BuildContext context, List<RouteNavbarParams> routeData) {
  final String location = GoRouter.of(context).location;
  final candidates = routeData
      .asMap()
      .entries
      .where((element) => element.value.path.startsWith(location))
      .toList();
  candidates.sort((a, b) {
    final aLen = a.value.path.length;
    final bLen = b.value.path.length;
    return aLen > bLen ? 1 : (aLen == bLen ? 0 : -1);
  });
  if (candidates.isEmpty) return null;
  return candidates[0].key;
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

void goTo(BuildContext context, String path) {
  if (!context.mounted) {
    Logger.talker.error("context not mounted on navigation");
    return;
  }

  Future.delayed(Duration.zero, () {
    Logger.talker.log("navigating to $path");
    Logger.talker.log(context);
    if (kIsWeb) {
      context.go(path);
    } else {
      context.push(path);
    }
  });
}

void goToNamed(
  BuildContext context,
  String name, {
  Map<String, String> pathParameters = const <String, String>{},
  Map<String, dynamic> queryParameters = const <String, dynamic>{},
  Object? extra,
}) {
  if (!context.mounted) {
    Logger.talker.error("context not mounted on navigation");
    return;
  }

  Future.delayed(Duration.zero, () {
    Logger.talker.info("navigating to $name");
    Logger.talker.log(context);
    if (kIsWeb) {
      context.goNamed(name,
          pathParameters: pathParameters,
          queryParameters: queryParameters,
          extra: extra);
    } else {
      context.pushNamed(name,
          pathParameters: pathParameters,
          queryParameters: queryParameters,
          extra: extra);
    }
  });
}

void back(BuildContext context) {
  if (!context.mounted) {
    Logger.talker.error("context not mounted on navigation");
    return;
  }
  Future.delayed(Duration.zero, () {
    Logger.talker.info("navigating back");
    if (!context.canPop()) {
      return goToNamed(context, 'home');
    }
    context.pop();
  });
}

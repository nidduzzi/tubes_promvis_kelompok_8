import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

void goTo(BuildContext context, String path, {bool push = false}) {
  if (!context.mounted) {
    Logger.talker.error("context not mounted on navigation (goTo)");
    Logger.talker.error(path);
    Logger.talker.error(context);
    return;
  }

  Future.delayed(Duration.zero, () {
    Logger.talker.info("navigating to $path (goTo push: $push)");
    Logger.talker.log(context);
    if (kIsWeb || !push) {
      context.go(path);
    } else {
      context.push(path);
    }
  });
}

void goToNamed(BuildContext context, String name,
    {Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
    bool push = false}) {
  if (!context.mounted) {
    Logger.talker.error("context not mounted on navigation (goToNamed)");
    Logger.talker.error(name);
    Logger.talker.error(context);
    return;
  }

  Future.delayed(Duration.zero, () {
    Logger.talker.info("navigating to $name (goToNamed push: $push)");
    Logger.talker.log(context);
    if (kIsWeb || !push) {
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
    Logger.talker.error("context not mounted on navigation (back)");
    Logger.talker.error(context);
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

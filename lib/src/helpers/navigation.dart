import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

void goTo(BuildContext context, String path) {
  Future.delayed(Duration.zero, () {
    if (!context.mounted) {
      Logger.talker.error("context not mounted on navigation");
    }
    context.go(path);
  });
}

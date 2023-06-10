import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void goTo(BuildContext context, String path) {
  Future.delayed(Duration.zero, () {
    context.go(path);
  });
}

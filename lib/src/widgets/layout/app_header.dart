import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppHeader extends HookWidget {
  const AppHeader({super.key, this.title, required this.child});
  final String? title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return Scaffold(
      appBar: AppBar(title: (title != null) ? Text(title) : null),
      body: child,
    );
  }
}

import 'package:flutter/material.dart';

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
/// https://medium.com/filledstacks/how-to-call-a-function-on-start-in-flutter-stateless-widgets-28d90ab3bf49

class StatefulWrapper extends StatefulWidget {
  final Function? onInit;
  final Widget child;
  const StatefulWrapper({super.key, this.onInit, required this.child});
  @override
  createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    super.initState();
    final initFunction = widget.onInit;
    if (initFunction != null) {
      initFunction();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

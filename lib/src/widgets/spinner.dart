import 'package:flutter/material.dart';

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
/// https://medium.com/filledstacks/how-to-call-a-function-on-start-in-flutter-stateless-widgets-28d90ab3bf49

class Spinner extends StatelessWidget {
  final bool isLoading;

  final Widget? child;
  const Spinner({super.key, this.isLoading = true, this.child});
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
          child: Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator.adaptive()));
    }
    return const SizedBox();
  }
}

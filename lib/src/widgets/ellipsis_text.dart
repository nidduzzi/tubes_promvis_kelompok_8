import 'package:flutter/material.dart';

class EllipsisText extends StatelessWidget {
  final String text;
  final double maxWidth;

  const EllipsisText({
    super.key,
    required this.text,
    this.maxWidth = 100,
  });

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      maxWidth: maxWidth,
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

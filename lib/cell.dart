import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  final color;
  final child;

  Cell({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: child,
    );
  }
}

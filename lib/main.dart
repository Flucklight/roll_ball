import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(RollBall());
}

class RollBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

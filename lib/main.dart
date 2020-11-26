import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'board.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_) {
    runApp(RollBall());
  });
}

class RollBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

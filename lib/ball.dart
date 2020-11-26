import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  int posicion;

  Ball({this.posicion});

  int getPosicion() {
    return this.posicion;
  }
  
  void setPosicion(int posicion) {
    this.posicion = posicion;
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/ball.png');
  }
}

import 'package:all_sensors/all_sensors.dart';
import 'package:flutter/material.dart';
import 'package:roll_ball/ball.dart';
import 'package:roll_ball/cell.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final int numRow = 17;
  static final int numCell = 17 * 8;
  Ball ball = Ball(
    posicion: 105,
  );

  List<int> walls = [
    0  ,1  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,10 ,11 ,12 ,13 ,14 ,15 ,16 ,
    17 ,23 ,24 ,25 ,26 ,33 ,34 ,36 ,37 ,38 ,45 ,46 ,47 ,48 ,50 ,51 ,53 ,
    54 ,55 ,56 ,57 ,58 ,59 ,60 ,61 ,62 ,67 ,68 ,74 ,78 ,79 ,81 ,82 ,84 ,
    85 ,87 ,88 ,89 ,91 ,93 ,95 ,96 ,98 ,99 ,101,102,106,110,115,116,118,
    119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135
  ];

  @override
  void initState() {
    accelerometerEvents.listen((event) {
      if (event.z.roundToDouble() <= -2.0 && !this.walls.contains(this.ball.getPosicion() + 17)) {
        setState(() {
          this.ball.setPosicion(this.ball.getPosicion() + 17);
        });
      } else if (event.z.roundToDouble() >= 8.0 && !this.walls.contains(this.ball.getPosicion() - 17)) {
        setState(() {
          this.ball.setPosicion(this.ball.getPosicion() - 17);
        });
      } if (event.y.roundToDouble() >= 5.0 && !this.walls.contains(this.ball.getPosicion() + 1)) {
        setState(() {
          this.ball.setPosicion(this.ball.getPosicion() + 1);
        });
      } else if (event.y.roundToDouble() <= -5.0 && !this.walls.contains(this.ball.getPosicion() - 1)) {
        setState(() {
          this.ball.setPosicion(this.ball.getPosicion() - 1);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: GridView.builder(
          itemCount: numCell,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: numRow),
          itemBuilder: (BuildContext context, int index) {
            if (this.ball.getPosicion() == index) {
              return this.ball;
            } else if (walls.contains(index)) {
              return Cell(
                color: Colors.blue,
              );
            } else {
              return Cell(
                color: Colors.black,
              );
            }
          },
        ),
      ),
    );
  }
}

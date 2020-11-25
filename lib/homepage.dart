import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numRow = 17;
  static int numCell = numRow * 8;
  List<int> board = [
    0  ,1  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,10 ,11 ,12 ,13 ,14 ,15 ,16 ,
    17 ,18 ,19 ,20 ,21 ,22 ,23 ,24 ,25 ,26 ,27 ,28 ,29 ,30 ,31 ,32 ,33 ,
    34 ,35 ,36 ,37 ,38 ,39 ,40 ,41 ,42 ,43 ,44 ,45 ,46 ,47 ,48 ,49 ,50 ,
    51 ,52 ,53 ,54 ,55 ,56 ,57 ,58 ,59 ,60 ,61 ,62 ,63 ,64 ,65 ,66 ,67 ,
    68 ,69 ,70 ,71 ,72 ,73 ,74 ,75 ,76 ,77 ,78 ,79 ,80 ,81 ,82 ,83 ,84 ,
    85 ,86 ,87 ,88 ,89 ,90 ,91 ,92 ,93 ,94 ,95 ,96 ,97 ,98 ,99 ,100,101,
    102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,
    119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135
  ];

  List<int> walls = [
    0  ,1  ,2  ,3  ,4  ,5  ,6  ,7  ,8  ,9  ,10 ,11 ,12 ,13 ,
    14 ,15 ,16 ,17 ,23 ,24 ,25 ,26 ,33 ,34 ,36 ,37 ,38 ,45 ,
    47 ,48 ,50 ,51 ,53 ,54 ,55 ,56 ,57 ,58 ,59 ,60 ,61 ,62 ,
    64 ,65 ,67 ,68 ,74 ,78 ,79 ,81 ,82 ,84 ,85 ,87 ,88 ,89 ,
    91 ,93 ,95 ,96 ,98 ,99 ,101,102,106,110,115,116,118,119,
    120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135
  ];

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
            if (walls.contains(index)) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  color: Colors.blue,
                  child: Text(index.toString()),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  color: Colors.grey,
                  child: Text(index.toString()),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

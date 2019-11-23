import 'package:flutter/material.dart';
import 'dart:math';

class FarbenScreen extends StatefulWidget {
  @override
  _FarbenScreenState createState() => _FarbenScreenState();
}

class _FarbenScreenState extends State<FarbenScreen> {
  final Color myColor = UniqueColorGenerator.getColor();
  int _test = 0;

   void _change(){
    setState(() {
      _test++;
      UniqueColorGenerator.getColor();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farben"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red,Colors.orange, Colors.yellow,Colors.green,Colors.blue,Colors.purple]
              ),
            ),
          )
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('$_test'),
            Container(
              decoration: BoxDecoration(
                color: myColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 300.0,
              height: 300.0,

            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RaisedButton(
                  onPressed: _change,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Farbe wechseln", style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UniqueColorGenerator {
  static Random random = new Random();

  static Color getColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}

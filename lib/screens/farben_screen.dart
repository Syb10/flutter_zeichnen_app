import 'package:flutter/material.dart';
import 'dart:math';


class FarbenScreen extends StatefulWidget {
  @override
  _FarbenScreenState createState() => _FarbenScreenState();
}

class _FarbenScreenState extends State<FarbenScreen> {
  final Color myColor = UniqueColorGenerator.getColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farben"),
      ),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: myColor,
          ),
        ),
      ),
    );
  }
}

class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
import 'package:flutter/material.dart';

class TiereScreen extends StatefulWidget {
  @override
  _TiereScreenState createState() => _TiereScreenState();
}

class _TiereScreenState extends State<TiereScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiere"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.brown, Colors.orangeAccent]
              ),
            ),
          ),
      ),
    );
  }
}

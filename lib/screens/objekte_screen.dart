import 'package:flutter/material.dart';

class ObjekteScreen extends StatefulWidget {
  @override
  _ObjekteScreenState createState() => _ObjekteScreenState();
}

class _ObjekteScreenState extends State<ObjekteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objekte"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue[800], Colors.lightBlueAccent]
              ),
            ),
          )
      ),
    );
  }
}

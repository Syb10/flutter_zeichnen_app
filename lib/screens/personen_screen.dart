import 'package:flutter/material.dart';

class PersonenScreen extends StatefulWidget {
  @override
  _PersonenScreenState createState() => _PersonenScreenState();
}

class _PersonenScreenState extends State<PersonenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personen"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red[700], Colors.orangeAccent]
              ),
            ),
          )
      ),
    );
  }
}

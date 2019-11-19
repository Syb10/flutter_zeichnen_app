import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/ergebis_screen.dart';
import 'package:flutter_zeichnen_app/screens/farben_screen.dart';
import 'package:flutter_zeichnen_app/screens/objekte_screen.dart';
import 'package:flutter_zeichnen_app/screens/personen_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Was zeichne ich Heute"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.greenAccent]
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(children: <Widget>[
          buildButton(context, "Farbe", Icons.color_lens, FarbenScreen()),
          buildButton(context, "Objekte", Icons.category, ObjekteScreen()),
          buildButton(context, "Personen", Icons.person, PersonenScreen()),
          buildButton(context, "Ergebnis", Icons.flag, ErgebnisScreen()),

        ]
        ),
      ),
    );
  }

  Container buildButton(BuildContext context, text, icon, widget) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: RaisedButton.icon(
          label: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          color: Colors.lightBlueAccent,
          textColor: Colors.white,
          icon: Icon(icon),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget,
                ));
          },
        ),
      ),
    );
  }
}
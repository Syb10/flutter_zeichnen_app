import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/farben_screen.dart';
import 'package:flutter_zeichnen_app/screens/landschaft_screen.dart';
import 'package:flutter_zeichnen_app/screens/objekte_screen.dart';
import 'package:flutter_zeichnen_app/screens/personen_screen.dart';
import 'package:flutter_zeichnen_app/screens/tiere_screen.dart';

class WahlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          buildButton(context, "Farbe", Colors.purple[400], Icons.color_lens, FarbenScreen()),
          buildButton(context, "Objekte", Colors.blue[400], Icons.category, ObjekteScreen()),
          buildButton(context, "Landschaft", Colors.green[400], Icons.wb_sunny, LandschaftScreen()),
          buildButton(context, "Personen", Colors.orange[400], Icons.person, PersonenScreen()),
          buildButton(context, "Tiere", Colors.red[400], Icons.pets, TiereScreen()),
        ],)

    );
  }
  Container buildButton(BuildContext context, text, farbe, icon, widget) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: OutlineButton.icon(
          label: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          borderSide: BorderSide(
            color: farbe, //Color of the border
            style: BorderStyle.solid, //Style of the border
            width: 2.0, //width of the border
          ),
          textColor: farbe,
          icon: Icon(icon),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
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

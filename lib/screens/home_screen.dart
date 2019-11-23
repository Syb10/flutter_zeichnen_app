import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/ergebis_screen.dart';
import 'package:flutter_zeichnen_app/screens/farben_screen.dart';
import 'package:flutter_zeichnen_app/screens/landschaft_screen.dart';
import 'package:flutter_zeichnen_app/screens/objekte_screen.dart';
import 'package:flutter_zeichnen_app/screens/personen_screen.dart';
import 'package:flutter_zeichnen_app/screens/tiere_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Was zeichne ich Heute"),
              background: Image.asset("assets/images/hintergrund.png", fit: BoxFit.fill,),
            ),
          ),
          SliverFillRemaining(
              child: Column(children: <Widget>[
                buildButton(context, "Farbe",Colors.purpleAccent, Icons.color_lens, FarbenScreen()),
                buildButton(context, "Objekte", Colors.blueAccent, Icons.category, ObjekteScreen()),
                buildButton(context, "Landschaft", Colors.green[200], Icons.wb_sunny, LandschaftScreen()),
                buildButton(context, "Personen", Colors.orangeAccent, Icons.person, PersonenScreen()),
                buildButton(context, "Tiere", Colors.redAccent, Icons.pets, TiereScreen()),
                //buildButton(context, "Ergebnis", Icons.flag, ErgebnisScreen()),

              ]
              ),
          ),
        ],
      ),
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
import 'dart:math';

import 'package:flutter/material.dart';

class LandschaftScreen extends StatefulWidget {
  @override
  _LandschaftScreenState createState() => _LandschaftScreenState();
}

class _LandschaftScreenState extends State<LandschaftScreen> {

  List<String> wetter =
      ["Wolken","Wind", "Nebel","Regenbogen", "Gewitter", "Regen", "Schnee"].toList();
  Random randomWetter = new Random();
  int indexWetter = 0;
  void changeWetter() {
    setState(() => indexWetter = randomWetter.nextInt(7));
  }

  List<String> gebiet =
      ["Berge", "Alm", "Strand", "Fluss", "Stadt", "Hügel", "Wüste", "Meer", "Dschungel", "Savanne"].toList();
  Random randomGebiet = new Random();
  int indexGebiet = 0;
  void changeGebiet() {
    setState(() => indexGebiet = randomGebiet.nextInt(10));
  }

  List<String> jahreszeit =
  ["Winter", "Sommer", "Frühling", "Herbst"].toList();
  Random randomJahreszeit = new Random();
  int indexJahreszeit = 0;

  void changeJahreszeit() {
    setState(() => indexJahreszeit = randomJahreszeit.nextInt(4));
  }

  List<String> tageszeit =
  ["Morgens", "Sonnenaufgang", "Sonnenuntergang", "Nacht", "Mittags", "Dämmerung"].toList();
  Random randomTageszeit = new Random();
  int indexTageszeit = 0;

  void changeTageszeit() {
    setState(() => indexTageszeit = randomTageszeit.nextInt(6));
  }

  void change() {
    setState(() {
      changeWetter();
      changeGebiet();
      changeJahreszeit();
      changeTageszeit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Landschaft"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green[800], Colors.green[200]]),
            ),
          )),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: <Widget>[
                    buildBox("Wetter", '${wetter[indexWetter]}'),
                    buildBox("Gebiet", '${gebiet[indexGebiet]}'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    buildBox("Jahreszeit", '${jahreszeit[indexJahreszeit]}'),
                    buildBox("Tageszeit", '${tageszeit[indexTageszeit]}'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: RaisedButton.icon(
                    onPressed: change,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    icon: Icon(Icons.autorenew),
                    label: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Wechseln",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    color: Colors.green[200],
                    textColor: Colors.green[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBox(art, text) {
    return Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.green[800], Colors.green[200]]),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0)),
              ),
              width: 170.0,
              height: 40.0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(art,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                border: Border.all(
                  color: Colors.green[100],
                  width: 2.0,
                ),
              ),
              width: 170.0,
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(fontSize: 20, color: Colors.green[800]),
                )),
              ),
            ),
          ],
        ));
  }
}

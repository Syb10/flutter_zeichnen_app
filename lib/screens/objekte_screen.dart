import 'dart:math';

import 'package:flutter/material.dart';

class ObjekteScreen extends StatefulWidget {
  @override
  _ObjekteScreenState createState() => _ObjekteScreenState();
}

class _ObjekteScreenState extends State<ObjekteScreen> {

  List<String> zustand = [
    "Alt", "Neu", "Beule", "staubig", "glänzend"
  ].toList();
  int indexZustand = 0;
  Random randomZustand = new Random();
  void changeZustand(){
    setState(() => indexZustand = randomZustand.nextInt(5));
  }

  void change(){
    setState(() {
      changeZustand();
    });
  }

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
                  colors: [Colors.blue[800], Colors.blue[200]]
              ),
            ),
          )
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildBox("Zustand",'${zustand[indexZustand]}'),
                  ),
                  Expanded(child: buildBox("Zustand",'${zustand[indexZustand]}'),
                  ),
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
                color: Colors.blue[200],
                textColor: Colors.blue[800],
              ),
            )
          ],
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
                    colors: [Colors.blue[800], Colors.blue[200]]),
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
                  color: Colors.blue[200],
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
                      style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                    )),
              ),
            ),
          ],
        ));
  }

}

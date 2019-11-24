import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/wahl_screen.dart' as first;
import 'package:flutter_zeichnen_app/screens/ergebis_screen.dart' as third;


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    final _kTabs = <Tab>[
      Tab(icon: Icon(Icons.autorenew), text: "Wahl"),
      Tab(icon: Icon(Icons.close), text: "Tab1"),
      Tab(icon: Icon(Icons.flag), text: "Ergebnis"),
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("klextakel")),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange, Colors.blue]),
            ),
          ),
            bottom: TabBar(tabs: _kTabs),
        ),
        body: TabBarView(
          children: <Widget>[
            first.WahlScreen(),
            first.WahlScreen(),
            third.ErgebnisScreen(),
          ],
        ),
      ),
    );
  }
}
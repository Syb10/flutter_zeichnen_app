import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/test_screen.dart' as secend;
import 'package:flutter_zeichnen_app/screens/test_screen.dart' as first;
import 'package:flutter_zeichnen_app/screens/wuerfel_screen.dart' as secend;
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
      Tab(icon: Icon(Icons.check_box), text: "Auswählen"),
      Tab(icon: Icon(Icons.autorenew), text: "Würfeln"),
      Tab(icon: Icon(Icons.flag), text: "Ergebnis"),
    ];

    return Scaffold(
      body: DefaultTabController(
          length: _kTabs.length,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 150,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset("assets/images/hintergrund2.png", fit:BoxFit.cover),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        //indicatorColor: Colors.red,
                        tabs: _kTabs
                    )
                  ),
                  pinned: true,
                )
              ];
            },
            body: Center(
              child: TabBarView(
                children: <Widget>[
                  first.TestScreen(),
                  secend.WuerfelScreen(),
                  third.ErgebnisScreen(),
                ],
            ),
          ),
      ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
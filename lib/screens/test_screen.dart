import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/wuerfel_screen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value21 = false;
  bool _value22 = false;
  bool _value3 = false;
  bool _value31 = false;
  bool _value32 = false;
  bool _value33 = false;
  bool _value34 = false;
  bool _value4 = false;
  bool _value41 = false;
  bool _value42 = false;
  bool _value43 = false;
  bool _value44 = false;
  bool _value5 = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isVisible4 = false;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _value2Changed(bool value) {
    setState(() {
      _value2 = value;
      _isVisible2 = !_isVisible2;
      //WuerfelScreen(value),
    });
  }
  void _value21Changed(bool value) => setState(() => _value21 = value);
  void _value22Changed(bool value) => setState(() => _value22 = value);

  void _value3Changed(bool value) {
    setState(() {
      _value3 = value;
      _isVisible3 = !_isVisible3;
    });
  }
  void _value31Changed(bool value) => setState(() => _value31 = value);
  void _value32Changed(bool value) => setState(() => _value32 = value);
  void _value33Changed(bool value) => setState(() => _value33 = value);
  void _value34Changed(bool value) => setState(() => _value34 = value);

  void _value4Changed(bool value) {
    setState(() {
      _value4 = value;
      _isVisible4 = !_isVisible4;
    });
  }
  void _value41Changed(bool value) => setState(() => _value41 = value);
  void _value42Changed(bool value) => setState(() => _value42 = value);
  void _value43Changed(bool value) => setState(() => _value43 = value);
  void _value44Changed(bool value) => setState(() => _value44= value);
  void _value5Changed(bool value) => setState(() => _value5 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildCheckboxListTile(_value1, "Farbe", _value1Changed, Icons.color_lens, Colors.purple[400]),
              buildCheckboxListTile(_value2, "Objekte", _value2Changed, Icons.category, Colors.blue[400]),
              Visibility(
                visible: _isVisible2,
                child: buildCheckboxListTileUnterpunkt(_value21, "Gegenstand", _value21Changed, Icons.category, Colors.blue[400]),),
              Visibility(
                visible: _isVisible2,
                child: buildCheckboxListTileUnterpunkt(_value22, "Zustand", _value22Changed, Icons.category, Colors.blue[400]),),

              buildCheckboxListTile(_value3, "Landschaft", _value3Changed, Icons.wb_sunny, Colors.green[400]),
              Visibility(
                  visible: _isVisible3,
                  child: buildCheckboxListTileUnterpunkt(_value31, "Gebiet", _value31Changed, Icons.wb_sunny, Colors.green[400])),
              Visibility(
                  visible: _isVisible3,
                  child: buildCheckboxListTileUnterpunkt(_value32, "Wetter", _value32Changed, Icons.wb_sunny, Colors.green[400]),),
              Visibility(
                visible: _isVisible3,
                child: buildCheckboxListTileUnterpunkt(_value33, "Jahreszeit", _value33Changed, Icons.cloud, Colors.green[400]),),
              Visibility(
                visible: _isVisible3,
                child:   buildCheckboxListTileUnterpunkt(_value34, "Tageszeit", _value34Changed, Icons.wb_sunny, Colors.green[400]),),


              buildCheckboxListTile(_value4, "Personen", _value4Changed, Icons.person, Colors.orange[400]),
              Visibility(
                  visible: _isVisible4,
                  child: buildCheckboxListTileUnterpunkt(_value41, "Geschlecht", _value41Changed, Icons.person, Colors.orange[400])),
              Visibility(
                visible: _isVisible4,
                child: buildCheckboxListTileUnterpunkt(_value42, "Alter", _value42Changed, Icons.person, Colors.orange[400]),),
              Visibility(
                visible: _isVisible4,
                child: buildCheckboxListTileUnterpunkt(_value43, "Charakter", _value43Changed, Icons.person, Colors.orange[400]),),
              Visibility(
                visible: _isVisible4,
                child:   buildCheckboxListTileUnterpunkt(_value44, "Zusatz", _value44Changed, Icons.person, Colors.orange[400]),),


              buildCheckboxListTile(_value5, "Tiere", _value5Changed, Icons.pets, Colors.red[400]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCheckboxListTile(value, text, change, icon, color) {
    return CheckboxListTile(
      value: value,
      onChanged: change,
      title: Text(text, style: TextStyle(fontSize: 19),),
      controlAffinity: ListTileControlAffinity.leading,
      secondary: Padding(
        padding: const EdgeInsets.only(right: 120.0),
        child: Icon(icon, color: color,),
      ),
      activeColor: color,
    );
  }

  Widget buildCheckboxListTileUnterpunkt(value, text, change, icon, color) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0),
      child: CheckboxListTile(
        //checkColor: color,
        value: value,
        onChanged: change,
        title: Text(text),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: Padding(
          padding: const EdgeInsets.only(right: 100.0),
          child: Icon(icon, color: color,),
        ),
        activeColor: color,
      ),
    );
  }

}

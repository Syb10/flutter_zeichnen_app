import 'package:flutter/material.dart';
import 'package:flutter_zeichnen_app/screens/farben_screen.dart';

class WuerfelScreen extends StatefulWidget {

  @override
  _WuerfelSreenState createState() => _WuerfelSreenState();
}

class _WuerfelSreenState extends State<WuerfelScreen> {
  bool _isVisible = true;
  Color _color;

  WuerfelScreen(Color color){
    this._color = color;

  }

  void showButton() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RaisedButton(
                  child: Text('Show/Hide Card B'),
                  onPressed: showButton,
                ),
                Visibility(
                  visible: _isVisible,
                  child: buildButton(context, "Farbe", Colors.purple[400], Icons.color_lens, FarbenScreen()),
                ),
              ],
            ),
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

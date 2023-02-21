import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool _pressed = false;

  void onPressed () {
    setState(() {
      _pressed = !this._pressed;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar (
            content: this._pressed ?
            Text("Me Encanta") :
            Text("No me encanta")
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressed,
      child: Icon(
          this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}
import 'package:flutter/material.dart';

class BarButtonCircle extends StatefulWidget {

  bool mini;
  var icon;
  double iconSize;
  var color;

  BarButtonCircle(this.mini, this.icon, this.iconSize, this.color);

  @override
  State<StatefulWidget> createState() {
    return _BarButtonCircle();
  }
}

class _BarButtonCircle extends State<BarButtonCircle> {

  void onPressedButton() {

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: onPressedButton,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Color(0xFFCFEB32),
          ),
        )
    );
  }
}
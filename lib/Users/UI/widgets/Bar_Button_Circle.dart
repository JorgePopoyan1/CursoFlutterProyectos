import 'package:flutter/material.dart';

class BarButtonCircle extends StatefulWidget {
  final VoidCallback onPressed;
  bool mini;
  var icon;
  double iconSize;
  var color;

  BarButtonCircle(this.mini, this.icon, this.iconSize, this.color,
      @required this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _BarButtonCircle();
  }
}

class _BarButtonCircle extends State<BarButtonCircle> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: widget.onPressed,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: Color(0xFF4268D3),
      ),
      //heroTag: null,
          heroTag: null,
    ));
  }
}

import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title = "Popular";
  final double height;

  GradientBack({Key key, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;


    /*if (height == null) {
      this.height = screenHeight;
    }*/


    return Container(
        width: screenHeight,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFFbfeb91)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(2.0, 0.15),
                stops: [0.0, 0.38],
                tileMode: TileMode.mirror)),
        child: FittedBox(
            fit: BoxFit.none,
            alignment: Alignment(-1.5, -0.8),
            child: Container(
              width: screenWidht,
              height: screenHeight,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
              //alignment: Alignment(-0.9, -0.6),
            )));
  }
}

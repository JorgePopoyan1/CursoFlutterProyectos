import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Popular";
  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFFbfeb91)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(2.0, 0.15),
          stops: [0.0, 0.38],
          tileMode: TileMode.mirror
        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 35.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w700
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }

}

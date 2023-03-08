import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;
  ButtonPurple({Key key, @required this.buttonText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: 50.0,
        width: 189.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF174378),
                  Color(0xFF584CD1)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.mirror
            )
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 22.0,
                fontFamily: "Roboto",
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData iconData;

  TextInputLocation(
      {Key key,
      @required this.hintText,
      @required this.controller,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 27.5, left: 27.5),
        child: TextField(
          controller: controller,
          style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Lato",
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(iconData),
            fillColor: Color(0xFFFFFFFF),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(11.0)),
              borderSide: BorderSide(color: Color(0xFFe5e5e5))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(11.0))
            )
          ),
        ),

      decoration: BoxDecoration(
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.white,
            blurRadius: 21.0,
            offset: Offset(2.0, 14.0)
          )
        ]
      ),
    );
  }
}

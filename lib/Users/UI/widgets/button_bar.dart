import 'package:flutter/material.dart';
import 'bar_button_profile.dart';

class ButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            BarButtonCircle(true, Icons.turned_in_not, 20.0, Color.fromRGBO(255, 255, 255, 1)),
            BarButtonCircle(true, Icons.card_travel, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
            BarButtonCircle(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1)),
            BarButtonCircle(true, Icons.mail_outline, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
            BarButtonCircle(true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 0.6))
          ],
        )
    );
  }

}
import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 398.0,
      child: ListView(
        padding: EdgeInsets.all(30.0),
        scrollDirection: Axis.horizontal,
        children: <Widget> [
          CardImage("assets/img/lagunap.jpg"),
          CardImage("assets/img/laguna1.jpg"),
          CardImage("assets/img/laguna2.jpg"),
          CardImage("assets/img/laguna3.jpg"),
          CardImage("assets/img/laguna4.jpg")
        ],
      ),
    );
  }
}
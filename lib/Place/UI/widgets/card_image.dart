import 'package:flutter/material.dart';
import '../../../Widgets/floating_actionButton.dart';

class CardImage extends StatelessWidget {

  String pathImage = "assets/img/lagunap.jpg";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 277.0,
      width: 237.0,
      margin: EdgeInsets.only(
        top: 32.5,
        left: 24.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(pathImage)
        ),
          borderRadius: BorderRadius.all(Radius.circular(23.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 24.0,
            offset: Offset(2.0, 8.0)
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}
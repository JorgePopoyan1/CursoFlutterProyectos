import 'dart:io';

import 'package:flutter/material.dart';
import '../../../Widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  final double height;
  final double width;
  final String pathImage;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;
  final bool local;

  CardImageWithFabIcon({
    Key key,
    this.pathImage,
    this.width,
    this.height,
    this.onPressedFabIcon,
    this.iconData,
    this.local,
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(left: 14.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: (local == true)
                  ? FileImage(
                      File(pathImage),
                    )
                  : NetworkImage(pathImage)
              /*
            image: FileImage(
              File(pathImage),
            ),*/
              ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 24.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressedFabIcon,
          heroTag: null,
        )
      ],
    );
  }
}

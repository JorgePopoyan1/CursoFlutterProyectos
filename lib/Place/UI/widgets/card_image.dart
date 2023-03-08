import 'package:flutter/material.dart';

import '../../../Widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  final double height;
  final double width;
  final String pathImage;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;

  CardImageWithFabIcon({
    Key key,
    @required this.pathImage,
    @required this.width,
    @required this.height,
    @required this.onPressedFabIcon,
    @required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(left: 14.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: NetworkImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 24.0,
                offset: Offset(3.5, 8.5))
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

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  double width = 350.0;
  double height = 450;
  double left = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.0,
      child: ListView(
        padding: EdgeInsets.all(30.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
            pathImage:
                "assets/img/Cenote-de-Laguna-Brava-Nenton-en-Huehuetenango-1024x767.jpg",
            iconData: Icons.favorite_border,
            width: width,
            height: height,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/image14.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: height,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/image12.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: height,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/Laguna-Brava-Yalambojoch.jpg",
            iconData: Icons.favorite_border,
            width: width,
            height: height,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/maxresdefault.jpg",
            iconData: Icons.favorite_border,
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }
}

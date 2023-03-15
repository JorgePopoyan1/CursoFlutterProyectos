import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/screens/header_appbar.dart';
import 'package:platzi_trips_app/Place/UI/widgets/reviewList.dart';
import '../widgets/description_place.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionDummy =
      "Al comienzo de esta app, fue un gran reto, ya que es primera vez que estoy conociendo "
      "esta tecnologia bastante interesante, como tambien tiene su lado de complejidad ya que "
      "tuve unos dolores de cabeza, donde esta tecnologia tiene varios conceptos diferentes que "
      "cambian al desarrollo nativo de ambas plataformas IOS y Android";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: [
            DescriptionPlace("Primera App", 5, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}

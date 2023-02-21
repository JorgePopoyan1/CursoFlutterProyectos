import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Review("assets/img/turista.jpg", "Pedro Yaaxa", "Turista de Alemania", "Me fascino este lugar de Guate, ya que es una \nlaguna cristalina donde tambien hace frontera \ncon el pais de Mexico"),
        Review("assets/img/pareja.png", "Santiago y Angie", "Turistas de Estados Unidos", "Es un lugar bastante hermoso, ya que el lugar es \ninolvidable"),
        Review("assets/img/pao.png", "Dulce Barrios", "Turista de Asia", "Este lugar me enamoro, ya que este lugar me acordo \nde mi novio por que el es un hombre tan guapo \nya que me da mi lugar asi como le doy el lugar a esta \nmaravillosoa laguna"),
        Review("assets/img/grupo.png", "Viajeros del Mundo", "Personas que les gusta viajar", "Este lugar se merece que sea una de las \n7 maravillas del mundo")
      ],
    );
  }

}
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/screens/header_appbar.dart';
import 'package:platzi_trips_app/Place/UI/widgets/reviewList.dart';
import '../widgets/description_place.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Al comienzo de la comunidad de El Aguacate, los primeros habitantes empezaron a llamar a la laguna con el seudónimo de “Brava” "
      "debido a que sus aguas en ocasiones se agita voluminosamente, puesto que al entrar en contacto con el viento el agua se llega a escuchar "
      "en los alrededores. \n\n Sin embargo, esto sucede después del media día, puesto que en las mañanas las aguas de la laguna permanecen en total "
      "silencio, de manera similar a un tranquilo espejo del paraíso. La Laguna Brava es un hermoso destino natural ubicado en el municipio de Nentón, "
      "Huehuetenango. \n\n  A 1142 metros de altura sobre el nivel del mar, rodeada por grandes sierras con diversa vegetación característica del "
      "altiplano guatemalteco, forma parte de una serie de 60 lagos, lagunas y cenotes que se distribuyen entre el noroccidente de Guatemala y parte de "
      "Chiapas, México.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: [
            DescriptionPlace("Laguna Brava", 5, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}

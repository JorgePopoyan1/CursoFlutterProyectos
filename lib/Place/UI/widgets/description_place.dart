import 'package:flutter/material.dart';
import '../../../Widgets/Button.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy =
      "La Laguna Brava es un hermoso destino natural ubicado en el municipio de Nentón, Huehuetenango. A 1142 metros de altura sobre el nivel del "
      "mar, rodeada por grandes sierras con diversa vegetación característica del altiplano guatemalteco, forma parte de una serie de 60 lagos, "
      "lagunas y cenotes que se distribuyen entre el noroccidente de Guatemala y parte de Chiapas, México. \n\n\nAl comienzo de la comunidad de "
      "El Aguacate, los primeros habitantes empezaron a llamar a la laguna con el seudónimo de “Brava debido a que sus aguas en ocasiones se agita "
      "voluminosamente, puesto que al entrar en contacto con el viento el agua se llega a escuchar en los alrededores. \n\n Sin embargo, esto sucede "
      "después del media día, puesto que en las mañanas las aguas de la laguna permanecen en total silencio, de manera similar a un tranquilo espejo "
      "del paraíso. \n\n Dista de la ciudad de Guatemala a 443 kilómetros. De hecho, su nombre proviene de voces maya-chuj OWNHAJAB´ “OW” que significa "
      "brava, mientras que “NHAJAB`”  laguna. En realidad, se trata de un complejo de varias lagunas interconectadas mediante inauditas cascadas. ";

  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(top: 330.0, right: 6.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 330.0, right: 6.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final stars = Container(
      margin: EdgeInsets.only(top: 330.0, right: 6.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 317.0,
            left: 35.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 45.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            stars,
            stars,
            stars,
            stars,
            //star_half,
            star_border
          ],
        )
      ],
    );

    final texto = Container(
      margin: EdgeInsets.only(top: 15.0, right: 30.0, left: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        texto,
        Button("Navigate")
      ],
    );
  }
}

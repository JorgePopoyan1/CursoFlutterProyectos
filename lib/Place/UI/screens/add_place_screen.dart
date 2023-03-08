import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/UI/widgets/card_image.dart';
import 'package:platzi_trips_app/Place/UI/widgets/title_input_location.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';
import 'package:platzi_trips_app/Widgets/button_purple.dart';
import 'package:platzi_trips_app/Widgets/gradient_back.dart';
import 'package:platzi_trips_app/Widgets/text_input.dart';
import 'package:platzi_trips_app/Widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  State createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();

    return Scaffold(
        body: Stack(
      children: [
        GradientBack(
          height: 300.0,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 6.0),
              height: 60.0,
              width: 60.0,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Flexible(
                child: Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
              child: TitleHeader(title: "Agregar un lugar nuevo"),
            ))
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 120.0, bottom: 35.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: CardImageWithFabIcon(
                  pathImage: widget.image.path, //widget.image.path,
                  iconData: Icons.camera_alt,
                  width: 350.0,
                  height: 250.0,
                ),
              ), //Foto
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 25.0),
                child: TextInput(
                  hintText: "Titulo",
                  inputType: null,
                  maxLines: 1,
                  controller: _controllerTitlePlace,
                ),
              ),
              TextInput(
                hintText: "Descripcion",
                inputType: TextInputType.multiline,
                controller: _controllerDescriptionPlace,
                maxLines: 5,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: TextInputLocation(
                  hintText: "Agregar Ubicacion",
                  iconData: Icons.location_on,
                ),
              ),
              Container(
                width: 70.0,
                child: ButtonPurple(
                  buttonText: "Agregar Lugar",
                  onPressed: () {
                    //1. Firebase Storage: url
                    //2. Cloud Firestore: Place-title, description, url, userOwner, likes
                    userBloc.updatePlaceData(Place(
                        name: _controllerTitlePlace.text,
                        description: _controllerDescriptionPlace.text,
                        likes: 0,
                    )).whenComplete(() {
                      print("Termino");
                      Navigator.pop(context);
                    });
                  },
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

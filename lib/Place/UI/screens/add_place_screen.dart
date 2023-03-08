import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

//import 'package:flutter/cupertino.dart';
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
  final File image;

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
                  pathImage: widget.image.path,
                  //widget.image.path,
                  iconData: Icons.camera_alt,
                  width: 350.0,
                  height: 250.0,
                  onPressedFabIcon: null,
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
                  controller: _controllerDescriptionPlace,
                ),
              ),
              Container(
                width: 70.0,
                child: ButtonPurple(
                  buttonText: "Agregar Lugar",
                  onPressed: () async {
                    try {
                      //1. Firebase Storage: url
                      User user = FirebaseAuth.instance.currentUser;
                      String imageUrl;
                      if (user != null) {
                        String uid = user.uid;
                        String path = "${uid}/${DateTime.now().toString()}.jpg";
                        imageUrl = await userBloc.uploadFile(path,
                            widget.image);
                      }

                      //2. Cloud Firestore: Place-title, description, urlImage, userOwner, likes
                      userBloc
                          .updatePlaceData(Place(
                        name: _controllerTitlePlace.text,
                        description: _controllerDescriptionPlace.text,
                        urlImage: imageUrl,
                        likes: 0,
                      ))
                          .whenComplete(() {
                        print("TERMINO");
                        Navigator.pop(context);
                      });
                    }catch (e) {
                      print(e);
                    }
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

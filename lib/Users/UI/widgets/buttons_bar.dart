import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/Place/UI/screens/add_place_screen.dart';
import 'package:platzi_trips_app/Place/UI/screens/search_trips.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';

import 'Bar_Button_Circle.dart';

class ButtonsBar extends StatelessWidget {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of(context);

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            //Cambiar la contraseña
            BarButtonCircle(true, Icons.vpn_key, 20.0,
                Color.fromRGBO(245, 219, 0, 1.0), () => SearchTrips()),

            //Añadiremos un nuevo lugar
            BarButtonCircle(
              false,
              Icons.add,
              40.0,
              Color.fromRGBO(47, 227, 22, 1.0),
              () {
                ///File image;
                picker.pickImage(source: ImageSource.camera).then(
                  (XFile image) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AddPlaceScreen(
                          image: File(image.path),
                        ),
                      ),
                    );
                  },
                ).catchError(
                  (onError) => print(onError),
                );
              },
            ),

            //Cerrar Sesión
            BarButtonCircle(true, Icons.exit_to_app, 20.0,
                Color.fromRGBO(255, 10, 10, 0.6), () => {userBloc.signOut()}),
          ],
        ));
  }
}

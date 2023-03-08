import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';
import 'package:platzi_trips_app/Users/model/users.dart';

import '../widgets/fondo_profile.dart';
import '../widgets/place_list.dart';
import 'header_profile.dart';

class ProfileTrips extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return showProfileData(snapshot);
          }
        });

    /*Stack(
      children: <Widget>[
        FondoProfile(),
        ListView(
          children: <Widget>[
            HeaderProfile(), //User datos
            PlaceList() //User uid
          ],
        ),
      ],
    );*/
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("NO REGISTRADO");
      return Stack(
        children: <Widget>[
          FondoProfile(),
          ListView(
            children: [
              Text("Usuario no registrado. Haz Login"),
            ],
          ),
        ],
      );
    } else {
      print("Logueado");
      var user = Users(
        uid: snapshot.data.uid,
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoUrl: snapshot.data.photoURL,
      );
      return Stack(
        children: <Widget>[
          FondoProfile(),
          ListView(
            children: <Widget>[
              HeaderProfile(user), //User datos
              PlaceList(user), //User uid
            ],
          ),
        ],
      );
    }
  }
}

import 'package:flutter/material.dart';
import '../widgets/fondo_profile.dart';
import '../widgets/place_list.dart';
import 'header_profile.dart';

class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FondoProfile(),
        ListView(
          children: <Widget>[
            HeaderProfile(),
            PlaceList()
          ],
        ),
      ],
    );
  }
}

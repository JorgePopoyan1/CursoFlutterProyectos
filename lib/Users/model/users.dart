import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class Users {
  final String uid;
  final String name;
  final String email;
  final String photoUrl;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  Users(
      {Key key,
      this.uid,
      this.name,
      this.email,
      this.photoUrl,
      this.myPlaces,
      this.myFavoritePlaces});
}

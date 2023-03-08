import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Users/model/users.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  //Users userOwner;

  Place(
      {Key key,
      @required this.name,
      @required this.description,
      @required this.urlImage,
      this.likes,
      //this.userOwner
  });
}

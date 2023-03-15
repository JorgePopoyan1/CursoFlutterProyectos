import 'package:flutter/material.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  bool liked;

  //Users userOwner;

  Place(
      {Key key,
      this.name,
      this.description,
      this.urlImage,
      this.likes,
      this.liked,
      this.id
      //this.userOwner
      });
}

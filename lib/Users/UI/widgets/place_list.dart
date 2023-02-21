import 'package:flutter/material.dart';
import '../../../Place/model/place.dart';
import 'placer.dart';

class PlaceList extends StatelessWidget {

  InfoPlace info = new InfoPlace('Laguna Brava', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  InfoPlace info2 = new InfoPlace('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          Lugar('assets/img/land1.jpg', info),
          Lugar('assets/img/paisaje.jpg', info2),
        ],
      ),
    );
  }

}
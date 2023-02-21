import 'package:flutter/material.dart';
import '../widgets/user_profile.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserProfile('assets/img/profile.jpg', 'Pedro Hernandez','phernandez@mail.com'),
          ButtonBar()
        ],
      ),
    );
  }

}
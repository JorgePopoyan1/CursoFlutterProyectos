import 'package:flutter/material.dart';
import 'package:platzi_trips_app/platzi_trips.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatziTrips()
    );
  }
}

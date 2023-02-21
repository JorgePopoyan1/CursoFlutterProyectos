import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/screens/home_trip.dart';
import 'package:platzi_trips_app/Place/UI/screens/search_trips.dart';
import 'package:platzi_trips_app/Users/UI/screens/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;
  final List widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "",
              ),
            ]
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'Place/UI/screens/home_trip.dart';
import 'Place/UI/screens/search_trips.dart';
import 'Users/UI/screens/profile_trips.dart';
import 'Users/bloc/bloc_user.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color.fromARGB(255, 71, 213, 53)),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,
                    color: Color.fromARGB(255, 221, 218, 54)),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: Color.fromARGB(255, 75, 207, 205)),
                label: ""),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider(
                    bloc: UserBloc(),
                    child: HomeTrips(),
                  );
                },
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider(
                    bloc: UserBloc(),
                    child: SearchTrips(),
                  );
                },
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileTrips(),
                  );
                },
              );
              break;
            default:
              return Container();
          }
        },
      ),
    );
  }
}

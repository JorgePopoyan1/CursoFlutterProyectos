import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/UI/screens/search_delegate.dart';

import 'package:platzi_trips_app/Users/UI/screens/profile_trips.dart';

import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';

class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PLACES OF GUATEMALA'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () => showSearch(
              context: context,
              delegate: SearchDelegatePlaces(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTrips(),
          ],
        ),
      ),
    );
  }
}

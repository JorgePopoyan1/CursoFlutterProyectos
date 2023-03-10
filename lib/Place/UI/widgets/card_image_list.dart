import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/UI/widgets/card_image.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';

class CardImageList extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Container(
      height: 380.0,
      child: StreamBuilder(
        stream: userBloc.placesStream,
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return ListViewPlaces(userBloc.buildPlaces(snapshot.data.docs));
          }
        },
      ),
    );
  }

  Widget ListViewPlaces(List<CardImageWithFabIcon> placesCard) {
    return ListView(
      padding: EdgeInsets.all(30.0),
      scrollDirection: Axis.horizontal,
      children: placesCard,
    );
  }
}

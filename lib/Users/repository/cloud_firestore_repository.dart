import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/Place/UI/widgets/card_image.dart';
import 'package:platzi_trips_app/Users/UI/widgets/profile_place.dart';
import 'package:platzi_trips_app/Users/repository/cloud_firestore_api.dart';

import '../../Place/model/place.dart';
import '../model/users.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreApi();

  Future<void> updateUserDataFirestore(Users user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);

  List<PlaceInfo> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.mybuildPlaces(placesListSnapshot);

  List<CardImageWithFabIcon> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}

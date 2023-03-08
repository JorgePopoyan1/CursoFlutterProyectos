import 'package:platzi_trips_app/Users/repository/cloud_firestore_api.dart';
import '../../Place/model/place.dart';
import '../model/users.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreApi();

  Future<void> updateUserDataFirestore(Users user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);
}

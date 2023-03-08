import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Users/model/users.dart';

class CloudFirestoreApi {
  final String USERS = "users";
  final String PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> updateUserData(Users usuario) async {
    CollectionReference users = _db.collection(USERS);
    DocumentReference ref = users.doc(usuario.uid);
    return await ref.set({
      'uid': usuario.uid,
      'name': usuario.name,
      'email': usuario.email,
      'photoURL': usuario.photoUrl,
      'myPlaces': usuario.myPlaces,
      'myFavoritePlaces': usuario.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(PLACE);
    String uid = (await _auth.currentUser).uid;
    await refPlaces.add({
      'name': place.name,
      'description': place.description,
      'likes': place.likes,
      'userOwner': "$USERS/$uid"
    });
  }
}

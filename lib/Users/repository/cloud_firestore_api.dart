import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Users/UI/widgets/profile_place.dart';
import 'package:platzi_trips_app/Users/model/users.dart';

class CloudFirestoreApi {
  final String USERS = "users";
  final String PLACES = "places";

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
    CollectionReference refPlaces = _db.collection(PLACES);
    String uid = (await _auth.currentUser).uid;
    await refPlaces.add({
      'name': place.name,
      'description': place.description,
      'likes': place.likes,
      'urlImage': place.urlImage,
      'userOwner': _db.doc("$USERS/$uid"),
    }).then((DocumentReference dr) {
      dr.get().then((DocumentSnapshot snapshot) {
        DocumentReference placeRef = snapshot.reference; // REFERENCIA ARRAY
        DocumentReference refUsers = _db.collection(USERS).doc(uid);
        refUsers.update({
          'myPlaces': FieldValue.arrayUnion([placeRef])
        });
      });
    });
  }

  List<PlaceInfo> buildPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<PlaceInfo> profilePlaces = [];
    placesListSnapshot.forEach((element) {
      profilePlaces.add(
          PlaceInfo(
            Place(
              name: element ['name'],
              description: element ['description'],
              urlImage: element ['urlImage'],
            ),
          ));
      });
    return profilePlaces;
  }
}

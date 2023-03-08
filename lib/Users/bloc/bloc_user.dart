import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Users/repository/auth_repository.dart';
import 'package:platzi_trips_app/Users/repository/cloud_firestore_repository.dart';
import '../model/users.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  Stream<User> streanFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streanFirebase;

  Future<User> signIn() => _auth_repository.signInFirebase();

  final _cloudFirestoreRepository = CloudFirestoreRepository();
  Future<void> updateUserData(Users user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceData(place);

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
  }
}

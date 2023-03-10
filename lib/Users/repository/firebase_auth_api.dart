import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:platzi_trips_app/Users/UI/screens/signin_screen.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User> signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    final user = await _auth.signInWithCredential(GoogleAuthProvider.credential(
        idToken: gSA.idToken, accessToken: gSA.accessToken));

    return user.user;
  }

  signOut() async {
    await _auth.signOut().then((onValue) => print("Sesion Cerrada"));
    googleSignIn.signOut();
    print("Sesiones Cerradas");
  }
}

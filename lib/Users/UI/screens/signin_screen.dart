import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';
import 'package:platzi_trips_app/Users/model/users.dart';
import 'package:platzi_trips_app/Widgets/button_google.dart';
import 'package:platzi_trips_app/Widgets/gradient_back.dart';
import 'package:platzi_trips_app/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;
  double screenWidht;

  @override
  Widget build(BuildContext context) {
    screenWidht = MediaQuery.of(context).size.width;
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder<User>(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return PlatziTripsCupertino();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome \n This is your Travel App",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(text: "Login with Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((User usuario) {
                    userBloc.updateUserData(Users(
                        uid: usuario.uid,
                        name: usuario.displayName,
                        email: usuario.email,
                        photoUrl: usuario.photoURL
                    ));
                  });
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}

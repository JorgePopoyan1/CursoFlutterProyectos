import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Users/UI/screens/signin_screen.dart';
import 'package:platzi_trips_app/Users/bloc/bloc_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'App de Viajes',
        //home: PlatziTripsCupertino(),
        home: SignInScreen(),
        debugShowCheckedModeBanner: false,
      ),
      bloc: UserBloc(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_cir2w16/screens/contact.dart';
import 'package:flutter_cir2w16/screens/login.dart';
import 'screens/first_screen.dart';
import 'screens/home.dart';
import 'screens/profile.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/':(context) => HomeScreen(),
        FirstScreen.id:(context) => FirstScreen(),
        ContactScreen.id:(context) => ContactScreen(),
        ProfileScreen.id:(context) => ProfileScreen(),
        LoginScreen.id:(context) => LoginScreen(),
    },
    );
  }
}

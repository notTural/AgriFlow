import 'package:flutter/material.dart';
import './Screens/intro_screen.dart';
import './Screens/login_screen.dart';
import './Screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 128, 197, 232),
        accentColor: Color.fromARGB(255, 51, 120, 148),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroScreen(),
      initialRoute: '/',
      routes: {
        SignUpScreen().routeName: (ctx) => SignUpScreen(),
        LoginScreen().routeName: (ctx) => LoginScreen(),
      },
    );
  }
}

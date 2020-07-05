import 'package:agri_flow/Providers/plants_provider.dart';
import 'package:agri_flow/Screens/addPlant_screen.dart';
import 'package:agri_flow/Screens/blog_screen.dart';
import 'package:agri_flow/Screens/main_screen.dart';
import 'package:agri_flow/Screens/notification_screen.dart';
import 'package:agri_flow/Screens/plants_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Screens/intro_screen.dart';
import './Screens/login_screen.dart';
import './Screens/sign_up_screen.dart';
import './Screens/report_screen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  runApp(MyApp());

  final appDocumentDir = await getApplicationDocumentsDirectory();
  //print(appDocumentDir.toString());
  Hive.init(appDocumentDir.path);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlantsProvider(),
      child: MaterialApp(
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
          NotificationScreen().routeName: (ctx) => NotificationScreen(),
          ReportScreen().routeName: (ctx) => ReportScreen(),
          AddPlant().routeName: (ctx) => AddPlant(),
          MainScreen().routeName: (ctx) => MainScreen(),
          PlantsScreen().routeName: (ctx) => PlantsScreen(),
          ReportScreen().routeName: (ctx) => ReportScreen(),
          BlogSCreen().routeName: (ctx) => BlogSCreen(),
        },
      ),
    );
  }
}

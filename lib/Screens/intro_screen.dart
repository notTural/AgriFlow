import 'package:agri_flow/Screens/login_screen.dart';
import 'package:agri_flow/Screens/main_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/Images/background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Image(
                  image: AssetImage("Assets/Images/drop.png"),
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage(
                    "Assets/Images/AgriFlow.png",
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
                SizedBox(
                  height: 170,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 3,
                  color: Color.fromARGB(255, 215, 245, 245),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen().routeName);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Başla",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    width: 215,
                    height: 55,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

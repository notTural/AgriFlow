import 'package:agri_flow/Widgets/appbar.dart';
import 'package:flutter/material.dart';

class AddPlant extends StatefulWidget {
  final routeName = "AddPlant";

  @override
  _AddPlantState createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          AppBarModified(),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.15,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Plants",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.16,
                      child: InkWell(
                        onTap: () {
                          print("Hello");
                        },
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                            Image(
                              image: AssetImage("assets/Images/ntomato.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text('Tomato'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.16,
                      child: InkWell(
                        onTap: () {
                          print("Hello");
                        },
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                            Image(
                              image: AssetImage("Assets/Images/eggPlant.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text('EggPlant'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.16,
                      child: InkWell(
                        onTap: () {
                          print("Hello");
                        },
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                            ),
                            Image(
                              image: AssetImage("Assets/Images/Grape.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text('Grape'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

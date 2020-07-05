import 'package:agri_flow/Providers/plants_provider.dart';
import 'package:agri_flow/Screens/addPlant_screen.dart';
import 'package:agri_flow/Screens/report_screen.dart';
import 'package:agri_flow/Widgets/appbar.dart';
import 'package:agri_flow/Widgets/drawer.dart';
import 'package:agri_flow/Widgets/weather.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'notification_screen.dart';

class PlantsScreen extends StatefulWidget {
  final routeName = "PlantsScreen";
  @override
  _PlantsScreenState createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      Navigator.pushNamed(context, ReportScreen().routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    var providerx = context.watch<PlantsProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, NotificationScreen().routeName);
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: DrawerNavigation(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.sprout),
            title: Text('Plants'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.post),
            title: Text('Blog'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.chartAreaspline),
            title: Text('Report'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Builder(
        builder: (ctx) => Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Weather(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Plants",
                      style: TextStyle(fontSize: 25),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AddPlant().routeName);
                      },
                      child: Text(
                        "+ Add Plant",
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                  child: Row(
                children: [
                  Container(
                    width: 140,
                    height: MediaQuery.of(context).size.height * 0.23,
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(ctx).showSnackBar(
                          SnackBar(
                            content: Text('Calculating Evapotranspiration...'),
                          ),
                        );
                        var et0 = providerx.calculateEt0();
                        et0.then((val) {
                          Scaffold.of(ctx).showSnackBar(
                            SnackBar(
                              content: Text(
                                  "Evapotranspiration rate is ${val.toStringAsFixed(3)}"),
                            ),
                          );
                        });
                      },
                      child: Card(
                        elevation: 0,
                        color: Color.fromARGB(255, 231, 231, 231),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              width: double.infinity,
                              height: 100,
                              child: Card(
                                  color: Color.fromRGBO(50, 184, 55, 100),
                                  elevation: 0,
                                  child: Image(
                                    image:
                                        AssetImage("Assets/Images/tomato.png"),
                                  )),
                            ),
                            Text(
                              "Tomato",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Image(
                                        image: AssetImage(
                                            "Assets/Images/watering.png"),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("1 hr"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.08,
                                    height: MediaQuery.of(context).size.width *
                                        0.08,
                                    child: Image(
                                      image: AssetImage(
                                          "Assets/Images/level1.png"),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

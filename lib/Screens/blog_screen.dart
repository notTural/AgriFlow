import 'package:agri_flow/Screens/plants_screen.dart';
import 'package:agri_flow/Screens/report_screen.dart';
import 'package:agri_flow/Widgets/drawer.dart';
import 'package:agri_flow/Widgets/weather.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'notification_screen.dart';

class BlogSCreen extends StatefulWidget {
  final routeName = "BlogSCreen";

  @override
  _BlogSCreenState createState() => _BlogSCreenState();
}

class _BlogSCreenState extends State<BlogSCreen> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      if (index == 0) {
        Navigator.pushNamed(context, PlantsScreen().routeName);
      } else if (index == 1) {
        Navigator.pushNamed(context, BlogSCreen().routeName);
      } else {
        Navigator.pushNamed(context, ReportScreen().routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
        builder: (ctx) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Weather(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Recommended Article",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  //height: MediaQuery.of(context).size.height * 0.29,
                  child: Card(
                    elevation: 0,
                    color: Color.fromARGB(255, 231, 231, 231),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              width: double.infinity,
                              height: 130,
                              child: Card(
                                color: Color.fromARGB(100, 51, 120, 148),
                                elevation: 0,
                                child: Image(
                                  image: AssetImage("Assets/Images/farm1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
                              child: Text(
                                "How much water does my farm need?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 3, 7, 7),
                          child: Text(
                            "by Agriculture Victoria",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Featured Articles",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      //width: 150,
                      //height: MediaQuery.of(context).size.height * 0.29,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            width: 90,
                            height: 90,
                            child: Card(
                              color: Color.fromARGB(255, 221, 221, 221),
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image(
                                  image: AssetImage("Assets/Images/farm2.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(7, 7, 7, 3),
                                child: Text(
                                  "Agriculture and Water Conservation",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(7, 3, 7, 7),
                                child: Text(
                                  "by Crop One Holdings",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      //width: 150,
                      //height: MediaQuery.of(context).size.height * 0.29,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            width: 90,
                            height: 90,
                            child: Card(
                              color: Color.fromARGB(255, 221, 221, 221),
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image(
                                  image: AssetImage("Assets/Images/farm3.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(7, 7, 7, 3),
                                child: Text(
                                  "Top 10 Benefits of Hydroponic Farming",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(7, 3, 7, 7),
                                child: Text(
                                  "by Pure Greens Arizona LLC",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

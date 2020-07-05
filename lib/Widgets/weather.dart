import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        height: MediaQuery.of(context).size.width * 0.70,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage("Assets/Images/sunny.png"),
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Mostly Sunny',
                              style: TextStyle(
                                color: Color.fromRGBO(128, 197, 232, 100),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage("Assets/Images/humidity.png"),
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '34°C',
                              style: TextStyle(
                                color: Color.fromRGBO(128, 197, 232, 100),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Container()
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.23,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.23,
                      color: Colors.white,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.01,
                                top: MediaQuery.of(context).size.width * 0.05),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "2",
                                ),
                                Text(
                                  "Sun",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.23,
                      color: Colors.white,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              print("tapped");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01,
                                  top:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "3",
                                  ),
                                  Text(
                                    "Sun",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.23,
                      color: Colors.white,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              print("tapped");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01,
                                  top:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "4",
                                  ),
                                  Text(
                                    "Sun",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.23,
                      color: Colors.white,
                      child: Card(
                        color: Color.fromRGBO(128, 197, 232, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              print("tapped");
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01,
                                  top:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "5",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Sun",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.23,
                      color: Colors.white,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text('Coming Soon...'),
                              ));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.005,
                                  top:
                                      MediaQuery.of(context).size.width * 0.01),
                              child: Icon(
                                Icons.date_range,
                                size: MediaQuery.of(context).size.width * 0.10,
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 16),
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        Image(
                          width: MediaQuery.of(context).size.width * 0.1,
                          image: AssetImage("Assets/Images/sun.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Light",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "5,8k",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 16),
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        Image(
                          width: MediaQuery.of(context).size.width * 0.1,
                          image: AssetImage("Assets/Images/eain.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Precipitation",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "0%",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 16),
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        Image(
                          width: MediaQuery.of(context).size.width * 0.1,
                          image: AssetImage("Assets/Images/wind.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Wind",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "18 km/h",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 16),
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        Image(
                          width: MediaQuery.of(context).size.width * 0.1,
                          image: AssetImage("Assets/Images/dip.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Humidity",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "33%",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 16),
                    child: Container(
                        child: Row(
                      children: <Widget>[
                        Image(
                          width: MediaQuery.of(context).size.width * 0.1,
                          image: AssetImage("Assets/Images/soilmoisture.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Soil Moisture",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "50%",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

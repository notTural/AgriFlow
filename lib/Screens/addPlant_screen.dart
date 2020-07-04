import 'package:agri_flow/Widgets/appbar.dart';
import 'package:flutter/material.dart';

class AddPlant extends StatefulWidget {
  final routeName = "AddPlant";

  @override
  _AddPlantState createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
  String _selectedLocation;

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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Plants",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.30,
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
                              image: AssetImage("assets/Images/eggPlant.png"),
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
                              image: AssetImage("assets/Images/Grape.png"),
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
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Location",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 40,
              child: DropdownButton(
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                iconEnabledColor: Theme.of(context).accentColor,
                iconSize: 20,
                underline: SizedBox(),
                hint: Text("Erazi"),
                items: [
                  DropdownMenuItem(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Text("Gencə-Qazax"),
                    ),
                    value: "0",
                  ),
                  DropdownMenuItem(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text("Muğan-Salyan"),
                    ),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text("Mil-Qarabağ"),
                    ),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text("Şirvan"),
                    ),
                    value: "3",
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Ekilme tarixi",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 40,
                    child: Text("12"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 40,
                    child: Text("12"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 40,
                    child: Text("1200"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

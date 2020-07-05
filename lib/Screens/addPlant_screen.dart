import 'package:agri_flow/Models/plant.dart';
import 'package:agri_flow/Providers/plants_provider.dart';
import 'package:agri_flow/Widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:agri_flow/Data/data.dart';

class AddPlant extends StatefulWidget {
  final routeName = "AddPlant";

  @override
  _AddPlantState createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
  int selectedPlantInd;

  String _selectedLocation;

  DateTime selectedDate;
  TextEditingController hectar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var testProvider = context.watch<PlantsProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBarModified(),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text("Plants",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
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
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedPlantInd = 0;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    "Assets/Images/" +
                                        (selectedPlantInd == 0
                                            ? "t_sel.png"
                                            : "tomato.png"),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.095,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text('Tomato'),
                                    ),
                                  ],
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
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedPlantInd = 1;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    "Assets/Images/" +
                                        (selectedPlantInd == 1
                                            ? "e_sel.png"
                                            : "eggPlant.png"),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.095,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text('Eggplant'),
                                    ),
                                  ],
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
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedPlantInd = 2;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    "Assets/Images/" +
                                        (selectedPlantInd == 2
                                            ? "g_sel.png"
                                            : "Grape.png"),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.095,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text('Grape'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text("Location",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Material(
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
                      hint: Text("-"),
                      items: [
                        DropdownMenuItem(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
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
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2000, 3, 5),
                              maxTime: DateTime.now(),
                              onChanged: (date) {}, onConfirm: (date) {
                            setState(() {
                              selectedDate = date;
                            });
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.az);
                        },
                        child: Container(
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
                                  child: Text(selectedDate != null
                                      ? selectedDate.year.toString()
                                      : "----"),
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
                                  child: Text(selectedDate != null
                                      ? selectedDate.month
                                          .toString()
                                          .padLeft(2, '0')
                                      : "--"),
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
                                  child: Text(selectedDate != null
                                      ? selectedDate.day
                                          .toString()
                                          .padLeft(2, '0')
                                      : "--"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text("Area",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 80,
                                height: 40,
                                child: Center(
                                  child: TextField(
                                    controller: hectar,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      hintText: "--",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 226, 230, 234),
                                          width: 0,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      // border: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: Color.fromARGB(255, 226, 230, 234),
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(40),
                                      // ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "hectares",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: SizedBox(
                  height: 45,
                  width: 110,
                  child: RaisedButton(
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      addPlantValidation();
                      /* if (selectedPlantInd == null ||
                          _selectedLocation == null ||
                          selectedDate == null) {
                        return false;
                      }

                      int arrInd;
                      if (selectedDate.month < 5) {
                        arrInd = 0;
                      } else if (selectedDate.month > 8) {
                        arrInd = 11;
                      } else {
                        arrInd =
                            (selectedDate.month - 5) * 3 + (selectedDate.day ~/ 10);
                      }

                      var bioConst =
                          BIOLOGIC_CONST[selectedPlantInd.toString()][arrInd];
                      print(bioConst);
                      testProvider.addNewPlant(
                        Plant(selectedPlantInd, selectedDate,
                            int.parse(addPlantValidation.toString()), bioConst),
                      ); */
                    },
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool addPlantValidation() {
    if (selectedPlantInd == null ||
        _selectedLocation == null ||
        selectedDate == null ||
        hectar == null ||
        hectar.text == null) {
      return false;
    }

    int arrInd;
    if (selectedDate.month < 5) {
      arrInd = 0;
    } else if (selectedDate.month > 8) {
      arrInd = 11;
    } else {
      arrInd = (selectedDate.month - 5) * 3 + (selectedDate.day ~/ 10);
    }

    var bioConst = BIOLOGIC_CONST[selectedPlantInd.toString()][arrInd];
    // print('Bio');
    // print(bioConst);
    var plant = new Plant(
        selectedPlantInd, selectedDate, double.parse(hectar.text), bioConst);
    Provider.of<PlantsProvider>(context, listen: false).addNewPlant(plant);
    Navigator.pop(context);

    return true;
  }
}

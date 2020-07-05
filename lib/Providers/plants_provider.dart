import 'package:agri_flow/Models/plant.dart';
import 'package:flutter/material.dart';

class PlantsProvider with ChangeNotifier {
  List<Plant> _plants = [Plant(0, DateTime.now(), 0, 0.24)];

  List<Plant> get plants {
    return [..._plants];
  }

  void addNewPlant(Plant newP) {
    _plants.add(newP);
    notifyListeners();
  }
}

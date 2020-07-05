import 'package:agri_flow/Models/plant.dart';
import 'package:flutter/foundation.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class PlantsProvider with ChangeNotifier {
  List<Plant> _plants = [Plant(0, DateTime.now(), 0.24)];

  List<Plant> get plants {
    return [..._plants];
  }

  void addNewPlant(Plant newP) {
    _plants.add(newP);
    print("Added new plant");
    print(_plants);
    notifyListeners();
  }

  Future<List> calculateEt0() async {
    var input = [
      [
        0.45378151,
        0.31351351,
        0.61016949,
        0.27692308,
        0.91176471,
        0.12903226,
        0.0,
        0.35714286,
        0.19548872,
        0.43814433,
        0.47368421
      ]
    ];
    var output = List(1).reshape([1, 1]);
    final interpreter = await Interpreter.fromAsset("model.tflite");
    print('Interpreter loaded successfully');
    interpreter.run(input, output);
    return output;
  }

  void calculateWater(Plant plant) {}
}

import 'package:flutter/services.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class Prediction {
  final _modelFile = 'model.tflite';

  // ignore: unused_element
  void _loadModel() async {
    // Creating the interpreter using Interpreter.fromAsset
    final _interpreter = await Interpreter.fromAsset(_modelFile);
    print('Interpreter loaded successfully');
  }
}




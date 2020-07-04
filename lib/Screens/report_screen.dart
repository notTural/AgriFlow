import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class ReportScreen extends StatefulWidget {
  final routeName = "ReportScreen";
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  Future<void> test() async {
    var input = [
      [
        0,
        0.36216216,
        0.47118644,
        0.38461538,
        0.79411765,
        0,
        0,
        0.28571429,
        0.19548872,
        0.25257732,
        0.64912281
      ]
    ];
    var output = List<double>(1);
    final interpreter =
        await Interpreter.fromAsset('Assets/Images/model.tflite');

    interpreter.run(input, output);
    print(output);
  }

  void _loadModel() async {
    // Creating the interpreter using Interpreter.fromAsset

    final interpreter = await Interpreter.fromAsset("model.tflite");
    print('Interpreter loaded successfully');
  }

/*   Future<File> getFile(String fileName) async {
    final appDir = await getTemporaryDirectory();
    final appPath = appDir.path;
    final fileOnDevice = File('$appPath/$fileName');
    final rawAssetFile = await rootBundle.load(fileName);
    final rawBytes = rawAssetFile.buffer.asUint8List();
    await fileOnDevice.writeAsBytes(rawBytes, flush: true);
    return fileOnDevice;
  } */

  /* Future<File> getFile(String fileName) async {
    final appDir = await getTemporaryDirectory();
    final appPath = appDir.path;
    final fileOnDevice = File('$appPath/$fileName');
    final rawAssetFile = await rootBundle.load(fileName);
    final rawBytes = rawAssetFile.buffer.asUint8List();
    await fileOnDevice.writeAsBytes(rawBytes, flush: true);
    return fileOnDevice;
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 100,
        height: 100,
        color: Colors.grey,
        child: InkWell(
          onTap: _loadModel,
          child: Card(
            child: Text("Badimcan"),
          ),
        ),
      )),
    );
  }
}

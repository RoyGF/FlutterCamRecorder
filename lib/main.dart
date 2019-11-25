import 'dart:io';

import 'package:cam_recorder/cam_recorder/VideoRecorder.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'utils.dart' as utils;

void main() {
  init() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(MaterialApp(
      title: "Camera Recorder",
      home: MainScreen(),
    ));
  }

  init();
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Recorder"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Open Route"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VideoRecorderExample()));
          },
        ),
      ),
    );
  }

}


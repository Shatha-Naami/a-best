//import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:best/app/App.dart';
import 'package:best/injectoin.dart';

import 'Ui/test.dart';

//List<CameraDescription> cameras = [];

Future<void> main() async {
//  try {
   WidgetsFlutterBinding.ensureInitialized();
//    cameras = await availableCameras();
//  } on CameraException catch (e) {
//    logError(e.code, e.description);
//  }

  await iniGetIt();
  runApp(App());
}

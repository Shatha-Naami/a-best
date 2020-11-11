//import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:best/app/App.dart';
import 'package:best/injectoin.dart';

import 'Ui/test.dart';

//List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await iniGetIt();
  runApp(App());
}

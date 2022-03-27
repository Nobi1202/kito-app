import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() {
    runApp(
      const MyApp(),
    );
  }, (error, stackTrace) {});
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';
import 'component/injector.dart';

void runMainApp() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Injector.create();
      runApp(App());
    },
    (error, stack) => debugPrint('error $error, $stack'),
  );
}

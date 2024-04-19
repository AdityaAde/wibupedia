import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wibupedia/data/remote/remote.dart';
import 'package:wibupedia/firebase_options.dart';

import 'app.dart';
import 'component/injector.dart';

void runMainApp() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      await FirebaseMessagingApi(getIt.get()).setupFlutterNotifications();
      await Hive.initFlutter();
      await Injector.create();

      runApp(App());
    },
    (error, stack) => debugPrint('error $error, $stack'),
  );
}

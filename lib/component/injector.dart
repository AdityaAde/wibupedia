import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../data/remote/base_service.dart';

final getIt = GetIt.instance;

class Injector {
  const Injector();

  static Future<void> create() async {
    debugPrint('clog create 1');
    const injector = Injector();
    //injector.onStartRegister();
    getIt.registerLazySingleton<BaseService>(() => BaseService.create());
  }

  // void onStartRegister() {
  //   debugPrint('clog create 2');
  //   _onRegisterService();
  // }

  // void _onRegisterService() async {
  //   debugPrint('clog create 3');
  //   getIt.registerLazySingleton<BaseService>(() => BaseService.create());
  // }
}

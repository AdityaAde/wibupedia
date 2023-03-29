import 'package:get_it/get_it.dart';

import '../data/remote/base_service.dart';

final getIt = GetIt.instance;

class Injector {
  const Injector();

  static Future<void> create() async {
    const injector = Injector();
    injector.onStartRegister();
  }

  void onStartRegister() {
    _onRegisterService();
  }

  void _onRegisterService() {
    getIt.registerLazySingleton<BaseService>(() => BaseService.create());
  }
}

import 'package:get_it/get_it.dart';

import '../component/dao_storage.dart';

extension InjectorExtension on GetIt {
  void onRegisterLocalStorage<T extends DaoLocalStorage>(
    FactoryFunc<T> create,
  ) {
    final object = create();
    get<List<DaoLocalStorage>>().add(object);
    registerFactory(() => object);
  }
}

import 'dart:async';
import 'package:hive/hive.dart';

import '../../component/dao_storage.dart';

class SecureKeyDao extends DaoLocalStorage<String> {
  final String _boxSecureKey = 'secure_box';

  SecureKeyDao._();

  factory SecureKeyDao.create() => SecureKeyDao._();

  @override
  Future<void> onClearLocalStorage() async {
    await box?.clear();
    return;
  }

  @override
  Future<void> onFirstRegisterLocalStorage() async {
    box = await Hive.openBox<String>(_boxSecureKey);
    return;
  }

  @override
  Future<void> onCloseLocalStorage() async {
    final box = Hive.box<String>(_boxSecureKey);
    await box.close();
    return;
  }

  @override
  Future<void> remove(String key) async {
    await box?.delete(key);
    return;
  }

  @override
  Future<void> save(String key, String value) async {
    await box?.put(key, value);
    return;
  }

  @override
  Future<void> update(String key, String value) async {
    await box?.put(key, value);
    return;
  }

  @override
  FutureOr<String?> value(String key) => box?.get(key);
}

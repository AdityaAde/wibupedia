import 'dart:async';

import 'package:hive/hive.dart';

abstract class DaoLocalStorage<E> {
  Box<E>? box;

  LazyBox<E>? lazyBox;

  Future<void> onFirstRegisterLocalStorage();

  Future<void> save(E key, E value);

  Future<void> update(E key, E value);

  Future<void> remove(E key);

  FutureOr<E?> value(E key);

  Future<void> onClearLocalStorage();

  Future<void> onCloseLocalStorage();
}

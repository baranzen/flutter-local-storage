import 'package:flutter_storage/services/local_storage_service.dart';
import 'package:flutter_storage/services/secure_storage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  //locator.registerSingleton<LocalStorageService>(SharedPreferenceService());
  locator
      .registerLazySingleton<LocalStorageService>(() => SecureStorageService());
}

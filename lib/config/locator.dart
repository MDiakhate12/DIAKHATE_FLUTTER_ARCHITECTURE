import 'package:discover/services/auth_service.dart';
import 'package:discover/ui/views/home/home_state.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => HomeState());
  locator.registerLazySingleton(() => AuthService());
}

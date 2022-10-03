import 'package:brick_weather_app/data/datasource/open_weather_datasource.dart';
import 'package:brick_weather_app/data/repository/open_weather_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<OpenWeatherDatasource>(
      () => OpenWeatherDatasourceImpl());
  sl.registerLazySingleton<OpenWeatherRepository>(
    () => OpenWeatherRepositoryImpl(datasource: sl<OpenWeatherDatasource>()),
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}

import 'package:brick_weather_app/data/datasource/open_weather_datasource.dart';
import 'package:brick_weather_app/model/weather_data.dart';

///Data Layer: репозиторий для доступа к данным и его реализация
abstract class OpenWeatherRepository {
  Future<WeatherDataResponse> getCurrentWeatherData(String city);
  Future<List<WeatherDataResponse>> getWeatherForecast(String city);
}

class OpenWeatherRepositoryImpl implements OpenWeatherRepository {
  final OpenWeatherDatasource datasource;

  OpenWeatherRepositoryImpl({required this.datasource});

  @override
  Future<WeatherDataResponse> getCurrentWeatherData(String city) =>
      datasource.getCurrentWeatherData(city);

  @override
  Future<List<WeatherDataResponse>> getWeatherForecast(String city) =>
      datasource.getWeatherForecast(city);
}

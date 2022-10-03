import 'package:brick_weather_app/model/main_data.dart';
import 'package:brick_weather_app/model/sys.dart';
import 'package:brick_weather_app/model/weather.dart';
import 'package:brick_weather_app/model/wind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

/// [WeatherData] - центральная модель всего приложения
@freezed
class WeatherData with _$WeatherData {
  const WeatherData._();

/// Создаем подобие юнионов для разных целей
/// первый [WeatherDataResponse] - получаем в ответе с сервера
/// Видим, что данная модель имеет кастомные типы, например [Wind]
  const factory WeatherData.response({
    @JsonKey(name: 'dt') required int datetime,
    required List<Weather> weather,
    required Wind wind,
    required MainData main,
    Sys? sys,
    @JsonKey(name: 'name') String? city,
  }) = WeatherDataResponse;

/// Для простоты использования в UI создаем модель, которая 
/// не будет включать себя вложенных сущностей - [WeatherDataUi]
  const factory WeatherData.ui({
    required int datetime,
    required String weatherType,
    required String weatherDescription,
    required double windSpeed,
    required int temp,
    required int humidity,
    required int pressure,
    required int feelsLike,
    required int tempMax,
    required int tempMin,
    String? city,
    int? sunrise,
    int? sunset,
  }) = WeatherDataUi;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  /// Очевидно - метод для перевода Кельвинов в Цельсии 
  /// (оказывается можно было получается сразу в Цельсиях, my bad)
  /// но переделывать не стал
  int toCelsius(double value) => (value - 273.15).toInt();

///Метод для создания модели типа [WeatherDataUi] из [WeatherDataResponse]
  WeatherDataUi toUi(WeatherDataResponse weather) => WeatherDataUi(
        datetime: datetime,
        city: city,
        weatherType: weather.weather.first.main,
        weatherDescription: weather.weather.first.description,
        windSpeed: weather.wind.speed,
        temp: toCelsius(weather.main.temp),
        humidity: weather.main.humidity,
        pressure: weather.main.pressure,
        feelsLike: toCelsius(weather.main.feelsLike),
        tempMax: toCelsius(weather.main.tempMax),
        tempMin: toCelsius(weather.main.tempMin),
        sunrise: weather.sys?.sunrise,
        sunset: weather.sys?.sunset,
      );
}

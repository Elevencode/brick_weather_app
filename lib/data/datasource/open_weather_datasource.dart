import 'dart:convert';
import 'package:brick_weather_app/config.dart';

import 'package:brick_weather_app/model/weather_data.dart';
import 'package:http/http.dart' as http;

///Data Layer: содержит в себе два метода - для получения текущей погоды
///и для получения прогноза на 5 дней
abstract class OpenWeatherDatasource {
  Future<WeatherDataResponse> getCurrentWeatherData(String city);

  Future<List<WeatherDataResponse>> getWeatherForecast(String city);
}

///Domain Layer: реализован здесь же - реализуем интерфейс
class OpenWeatherDatasourceImpl implements OpenWeatherDatasource {
  @override
  Future<WeatherDataResponse> getCurrentWeatherData(String city) async {
    /// openWeatherApiKey берется из файла config.dart, который не трекается гитом
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$openWeatherApiKey');

    try {
      /// Получаем ответ от сервера и десериализуем его
      final response = await http.get(url);

      final weatherJson = jsonDecode(response.body);

      ///Возвращаем результат, представляющий собой объект типа [WeatherDataResponse]
      ///Нет смысла делать проверку на статус ответа, так как используем try-catch
      final result =
          WeatherDataResponse.fromJson(weatherJson as Map<String, dynamic>);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<WeatherDataResponse>> getWeatherForecast(String city) async {
    // openWeatherApiKey берется из файла config.dart, который не трекается гитом
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$openWeatherApiKey');

    try {
      final response = await http.get(url);

      final weatherJson = jsonDecode(response.body);

      ///Возвращаем результат, представляющий собой список объектов типа [WeatherDataResponse]
      final result =
          List<Map<String, dynamic>>.from(weatherJson['list'] as List)
              .map(WeatherDataResponse.fromJson)
              .toList();
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDataResponse _$$WeatherDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDataResponse(
      datetime: json['dt'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      main: MainData.fromJson(json['main'] as Map<String, dynamic>),
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      city: json['name'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherDataResponseToJson(
        _$WeatherDataResponse instance) =>
    <String, dynamic>{
      'dt': instance.datetime,
      'weather': instance.weather,
      'wind': instance.wind,
      'main': instance.main,
      'sys': instance.sys,
      'name': instance.city,
      'runtimeType': instance.$type,
    };

_$WeatherDataUi _$$WeatherDataUiFromJson(Map<String, dynamic> json) =>
    _$WeatherDataUi(
      datetime: json['dt'] as int,
      weatherType: json['weatherType'] as String,
      weatherDescription: json['weatherDescription'] as String,
      windSpeed: (json['windSpeed'] as num).toDouble(),
      temp: json['temp'] as int,
      humidity: json['humidity'] as int,
      pressure: json['pressure'] as int,
      feelsLike: json['feelsLike'] as int,
      tempMax: json['tempMax'] as int,
      tempMin: json['tempMin'] as int,
      city: json['name'] as String?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherDataUiToJson(_$WeatherDataUi instance) =>
    <String, dynamic>{
      'dt': instance.datetime,
      'weatherType': instance.weatherType,
      'weatherDescription': instance.weatherDescription,
      'windSpeed': instance.windSpeed,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'feelsLike': instance.feelsLike,
      'tempMax': instance.tempMax,
      'tempMin': instance.tempMin,
      'name': instance.city,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'runtimeType': instance.$type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainData _$$_MainDataFromJson(Map<String, dynamic> json) => _$_MainData(
      temp: (json['temp'] as num).toDouble(),
      humidity: json['humidity'] as int,
      pressure: json['pressure'] as int,
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainDataToJson(_$_MainData instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'feels_like': instance.feelsLike,
      'temp_max': instance.tempMax,
      'temp_min': instance.tempMin,
    };

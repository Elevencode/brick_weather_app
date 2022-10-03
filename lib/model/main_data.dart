import 'package:brick_weather_app/model/weather.dart';
import 'package:brick_weather_app/model/wind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_data.freezed.dart';
part 'main_data.g.dart';

///Используем аннотацию @JsonKey для полей неподходящего формата
@freezed
class MainData with _$MainData {
  const MainData._();

  const factory MainData({
    required double temp,
    required int humidity,
    required int pressure,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_max') required double tempMax,
    @JsonKey(name: 'temp_min')required double tempMin,
  }) = _MainData;

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);
}

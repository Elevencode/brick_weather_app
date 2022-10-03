part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.dataFetched({
    // required double lat,
    // required double lng,
    required String city,
  }) = _DataFetched;
}

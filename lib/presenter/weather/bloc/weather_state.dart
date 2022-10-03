part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loadInProgress() = _LoadInProgress;
  const factory WeatherState.loadSuccess({
    required WeatherDataUi weatherData,
    required List<WeatherDataUi> forecast,
  }) = _LoadSuccess;
  const factory WeatherState.loadFailure(String errorText) = _LoadFailure;
}

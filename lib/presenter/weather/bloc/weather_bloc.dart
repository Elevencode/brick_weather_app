import 'package:bloc/bloc.dart';
import 'package:brick_weather_app/data/repository/open_weather_repository.dart';
import 'package:brick_weather_app/injection.dart';
import 'package:brick_weather_app/model/weather_data.dart';
import 'package:brick_weather_app/presenter/weather/widgets/forecast_tile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

/// [WeatherBloc] состоит из одного события и трех состояний.
/// Внутри [_onDataFetched] записываю название города в Shared Preferences,
/// а так же получаю данные о текущей погоде и прогнозе погоды на несколько дней

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(const _LoadInProgress()) {
    on<_DataFetched>(_onDataFetched);
  }
}

final OpenWeatherRepository weatherRepository = sl();
final SharedPreferences sharedPreferences = sl();

Future<void> _onDataFetched(
  _DataFetched event,
  Emitter<WeatherState> emit,
) async {
  emit(const _LoadInProgress());
  try {
    await sharedPreferences.setString('city', event.city);
    final weatherData =
        await weatherRepository.getCurrentWeatherData(event.city);
    final forecast =
        await weatherRepository.getWeatherForecast(event.city);
    final forecastData = forecast.map((data) => data.toUi(data)).toList();

    emit(_LoadSuccess(
        weatherData: weatherData.toUi(weatherData), forecast: forecastData));
  } catch (e) {
    emit(_LoadFailure(e.toString()));
  }
}

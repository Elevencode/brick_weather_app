import 'package:brick_weather_app/model/weather_data.dart';
import 'package:brick_weather_app/presenter/city_selection/city_selection_page.dart';
import 'package:brick_weather_app/presenter/error/error_page.dart';
import 'package:brick_weather_app/presenter/forecast/forecast_for_days.dart';
import 'package:brick_weather_app/presenter/weather/bloc/weather_bloc.dart';
import 'package:brick_weather_app/presenter/weather/widgets/forecast_tile.dart';
import 'package:brick_weather_app/presenter/weather/widgets/sunrise_sunset_tile.dart';
import 'package:brick_weather_app/presenter/weather/widgets/weather_details.dart';
import 'package:brick_weather_app/presenter/weather/widgets/weather_info.dart';
import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// UI: основной экран приложения с данными
/// Создаем WeatherBloc, с помощью метода .map (спасибо freezed)
/// определяем поведение при разных состояниях
/// Данный экран принимает из стейта две переменных - [weather] и [forecast],
/// содержащие в себе информацию о текущей погоде и о прогнозе соответственно.
/// На данном экране вношу некоторую декомпозицию на несколько виджетов -
/// для деталей погоды, прогноза на ближайшие часы и информации о восходе/закате
/// Часть, где используется [ForecastTile] пожалуй нужно будет переделать с
/// использованием ListView.builder
class WeatherPage extends StatelessWidget {
  const WeatherPage({required this.city, super.key});

  final String city;

  @override
  Widget build(BuildContext context) {
    ///Добавляю событие с названием города в блок для последующей
    ///работы с данными и получения их из возвращаемого состояния
    BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.dataFetched(
      city: city,
    ));
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) => state.map(
        loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) => WeatherPageBody(
          weather: state.weatherData,
          forecasts: state.forecast,
        ),
        loadFailure: (state) => ErrorPage(error: state.errorText),
      ),
    );
  }
}

class WeatherPageBody extends StatelessWidget {
  const WeatherPageBody({
    required this.weather,
    required this.forecasts,
    super.key,
  });

  final WeatherDataUi weather;
  final List<WeatherDataUi> forecasts;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF08204F), Color(0xFF0B80A1), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(weather.city ?? '-', style: text14w600),
                Text(
                  DateFormat('dd MMM yyy').format(DateTime.now()),
                  style: text14w600,
                )
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) =>
                          ForecastForDays(forecast: forecasts),
                    ),
                  );
                },
                icon: const Icon(Icons.history),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const CitySelectionPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: WeatherInfo(
                temp: weather.temp,
                main: weather.weatherType,
                feelsLike: weather.feelsLike,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: WeatherDetails(
                humidity: weather.humidity,
                windSpeed: weather.windSpeed,
                pressure: weather.pressure,
                description: weather.weatherDescription,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ForecastTile(
                      time: forecasts[0].datetime,
                      temp: forecasts[0].temp,
                      main: forecasts[0].weatherType,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ForecastTile(
                      time: forecasts[1].datetime,
                      temp: forecasts[1].temp,
                      main: forecasts[1].weatherType,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ForecastTile(
                      time: forecasts[2].datetime,
                      temp: forecasts[2].temp,
                      main: forecasts[2].weatherType,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SunriseSunsetTile(
                sunrise: weather.sunrise!,
                sunset: weather.sunset!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

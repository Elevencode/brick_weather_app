import 'package:brick_weather_app/model/weather_data.dart';
import 'package:brick_weather_app/presenter/forecast/widgets/forecast_for_days_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// UI: экран прогноза погоды на 5 дней
/// По заданию нужно отсортировать список с прогнозами 
/// от низкой температуры к высокой.
/// В api нет точки для получения дневного прогноза, поэтому
/// вынужден был сравнивать погоду в определенной время каждый день - 
/// выбрал время 8 утра - форматирую timestamp в DateTime. 
/// Делаю это в методе [_sortForecastList]
class ForecastForDays extends StatelessWidget {
  const ForecastForDays({
    required this.forecast,
    super.key,
  });

  final List<WeatherDataUi> forecast;

  @override
  Widget build(BuildContext context) {
    final sortedForecasts = _sortForecastList(forecast);

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
          backgroundColor: Colors.transparent,
          title: const Text('Min temp forecast'),
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            shrinkWrap: true,
            itemCount: sortedForecasts.length,
            itemBuilder: (context, index) => ForecastForDaysTile(
              date: sortedForecasts[index].datetime,
              temp: sortedForecasts[index].temp,
              main: sortedForecasts[index].weatherType,
              humidity: sortedForecasts[index].humidity,
              pressure: sortedForecasts[index].pressure,
            ),
          ),
        ),
      ),
    );
  }

  List<WeatherDataUi> _sortForecastList(List<WeatherDataUi> forecasts) {
    final List<WeatherDataUi> list = [];

    for (var f in forecasts) {
      final date = DateFormat('HH:mm')
          .format(DateTime.fromMillisecondsSinceEpoch(f.datetime * 1000));
      if (date == '08:00') {
        list.add(f);
      }
    }

    list.sort((a, b) => a.temp.compareTo(b.temp));

    return list;
  }
}

import 'package:brick_weather_app/presenter/weather/widgets/weather_info.dart';
import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class ForecastForDaysTile extends StatelessWidget {
  const ForecastForDaysTile({
    required this.date,
    required this.temp,
    required this.main,
    required this.humidity,
    required this.pressure,
    super.key,
  });

  final int date;
  final int temp;
  final String main;
  final int humidity;
  final int pressure;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd MMM yyyy').format(
                      DateTime.fromMillisecondsSinceEpoch(date * 1000),
                    ),
                    style: text18w400,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(WeatherIcons.thermometer),
                      Text(
                        temp > 0 ? '+$temp°' : '-$temp°',
                        style: text18w400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(WeatherIcons.raindrop),
                          const SizedBox(width: 8),
                          Text(
                            '$humidity%',
                            style: text18w400,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(WeatherIcons.barometer),
                          const SizedBox(width: 8),
                          Text(
                            '$pressure mmHg',
                            style: text18w400,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Icon(
                weatherMain[main],
                size: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

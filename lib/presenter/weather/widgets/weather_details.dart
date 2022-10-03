import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
    required this.description,
    super.key,
  });

  final int humidity;
  final double windSpeed;
  final int pressure;
  final String description;

//TODO: как убрать кривые паддинги у иконок?
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      elevation: 20,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: text18w400,
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(WeatherIcons.raindrop),
                const SizedBox(width: 8),
                Text(
                  '$humidity%',
                  style: text16w400,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.air),
                const SizedBox(width: 8),
                Text(
                  '$windSpeed m/s',
                  style: text16w400,
                ),
                const SizedBox(width: 8),
                const Icon(WeatherIcons.barometer),
                const SizedBox(width: 8),
                Text(
                  '$pressure mmHg',
                  style: text16w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

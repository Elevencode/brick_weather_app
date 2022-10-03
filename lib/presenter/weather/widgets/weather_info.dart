import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:weather_icons/weather_icons.dart';

const Map<String, IconData> weatherMain = {
  'Thunderstorm': WeatherIcons.thunderstorm,
  'Drizzle': WeatherIcons.rain_mix,
  'Rain': WeatherIcons.rain,
  'Snow': WeatherIcons.snow,
  'Mist': WeatherIcons.fog,
  'Smoke': WeatherIcons.smog,
  'Haze': WeatherIcons.fog,
  'Dust': WeatherIcons.dust,
  'Fog': WeatherIcons.fog,
  'Sand': WeatherIcons.sandstorm,
  'Ash': WeatherIcons.dust,
  'Squall': WeatherIcons.dust,
  'Tornado': WeatherIcons.tornado,
  'Clouds': WeatherIcons.cloud,
  'Clear': WeatherIcons.day_sunny,
};

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    required this.temp,
    required this.main,
    required this.feelsLike,
    super.key,
  });

  final int temp;
  final String main;
  final int feelsLike;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(temp > 0 ? '+$temp°' : '-$temp°', style: text60w500),
            const SizedBox(width: 8),
            Icon(
              weatherMain[main],
              size: 48,
            ),
          ],
        ),
        Text(
          feelsLike > 0 ? 'feels like +$feelsLike°' : 'feels like -$feelsLike°',
          style: text24w400,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

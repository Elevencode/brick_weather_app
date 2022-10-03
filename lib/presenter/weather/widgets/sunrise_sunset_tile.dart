import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class SunriseSunsetTile extends StatelessWidget {
  const SunriseSunsetTile({
    required this.sunrise,
    required this.sunset,
    super.key,
  });

  final int sunrise;
  final int sunset;

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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunrise at:',
                  style: text18w400,
                ),
                Text(
                  DateFormat('HH:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(sunrise * 1000)),
                  style: text18w400,
                ),
              ],
            ),
            if (DateTime.now().isBefore(_timestampToDateTime(sunrise)) ||
                DateTime.now().isAfter(_timestampToDateTime(sunset)))
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Icon(
                  WeatherIcons.moon_alt_first_quarter,
                  size: 48,
                ),
              )
            else
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Icon(
                  WeatherIcons.day_sunny,
                  size: 48,
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunset at:',
                  style: text18w400,
                ),
                Text(
                  DateFormat('HH:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(sunset * 1000)),
                  style: text18w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DateTime _timestampToDateTime(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  }
}

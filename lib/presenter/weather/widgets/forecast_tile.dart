import 'package:brick_weather_app/presenter/weather/widgets/weather_info.dart';
import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class ForecastTile extends StatelessWidget {
  const ForecastTile({
    required this.time,
    required this.temp,
    required this.main,
    super.key,
  });

  final int time;
  final int temp;
  final String main;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('HH:mm').format(
                DateTime.fromMillisecondsSinceEpoch(time * 1000),
              ),
              style: text18w400,
            ),
            const SizedBox(height: 16),
            Icon(
              weatherMain[main],
            ),
            const SizedBox(height: 36),
            Text(
              temp > 0 ? '+$temp°' : '-$temp°',
              style: text18w400,
            ),
          ],
        ),
      ),
    );
  }
}

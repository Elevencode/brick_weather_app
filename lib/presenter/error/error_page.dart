import 'package:brick_weather_app/presenter/city_selection/city_selection_page.dart';
import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({required this.error, super.key});
  final String error;

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  void initState() {
    final snackBar = SnackBar(
      content: const Text('Data fetch error'),
      backgroundColor: Colors.red.shade400,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(8.0),
      duration: const Duration(seconds: 6),
    );
    Future(() => ScaffoldMessenger.of(context).showSnackBar(snackBar));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF08204F), Color(0xFF0B80A1)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
                size: 48,
              ),
              TextButton(
                child: Text(
                  'Error! Go back',
                  style: text18w400.copyWith(color: Colors.white),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context)..clearSnackBars()..hideCurrentSnackBar();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CitySelectionPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

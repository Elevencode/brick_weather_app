import 'package:brick_weather_app/injection.dart';
import 'package:brick_weather_app/presenter/city_selection/city_selection_page.dart';
import 'package:brick_weather_app/presenter/weather/bloc/weather_bloc.dart';
import 'package:brick_weather_app/presenter/weather/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const BrickApp());
}

///Presentation Layer - инициализируем [WeatherBloc]
/// для дальнейшего доступа к нему через BlocProvider.of()

/// создаем экземпляр SharedPreferences из ServiceLocator
/// для проверки наличия города в локальном хранилище, 
/// в зависимости от чего показывается один или другой экран
class BrickApp extends StatelessWidget {
  const BrickApp({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPreferences prefs = sl();

    return BlocProvider<WeatherBloc>(
      create: (_) => WeatherBloc(),
      child: MaterialApp(
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.white),
          primaryColor: Colors.white,
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
        ),
        home: prefs.containsKey('city')
            ? WeatherPage(city: prefs.getString('city')!)
            : const CitySelectionPage(),
      ),
    );
  }
}

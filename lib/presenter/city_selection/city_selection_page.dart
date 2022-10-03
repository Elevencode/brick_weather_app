
import 'package:brick_weather_app/presenter/weather/weather_page.dart';
import 'package:brick_weather_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// UI: оборачиваем Scaffold в Container для создания градиента.
/// Локализации, к сожалению, пока нет, поэтому хардкодим текстовые поля.
/// Кнопка неактивна, пока текстовый контроллер пуст - ее доступность регулируется
/// методом [_onChangeButton].
/// По нажатию на кнопку создается новый роут, переносящий нас на основной экран
/// Используем Navigator.of(context).pushReplacement для замены текущего экрана,
/// вместо "наложения одного экрана на другой".

//TODO: реализовать google places autocomplete
class CitySelectionPage extends StatefulWidget {
  const CitySelectionPage({super.key});

  @override
  State<CitySelectionPage> createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  late TextEditingController _controller;
  bool _isButtonDisabled = true;

  @override
  void initState() {
    _controller = TextEditingController();
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
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'BRICK weather',
                    style: text60w500.copyWith(fontFamily: 'Prata'),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _onChangeButton();
                            });
                          },
                          enableInteractiveSelection: false,
                          enableIMEPersonalizedLearning: false,
                          enableSuggestions: false,
                          readOnly: false,
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'Select city',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                const EdgeInsets.only(left: 12, top: 8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: _isButtonDisabled
                              ? Colors.grey
                              : const Color(0xFF08204F),
                          textStyle: text14w600.copyWith(
                              color: const Color(0xFF08204F)),
                        ),
                        onPressed: _isButtonDisabled
                            ? null
                            : () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WeatherPage(city: _controller.text)),
                                );
                              },
                        child: Text(
                          'Go',
                          style: text18w400.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onChangeButton() {
    setState(() {
      _controller.text.isEmpty
          ? _isButtonDisabled = true
          : _isButtonDisabled = false;
    });
  }
}

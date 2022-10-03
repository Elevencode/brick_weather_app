import 'dart:convert';

import 'package:brick_weather_app/config.dart';
import 'package:brick_weather_app/model/place.dart';
import 'package:http/http.dart' as http;

abstract class GooglePlacesDatasource {
  Future<List<Place>> getPlaces(String input);
}

class GooglePlacesDatasourceImpl implements GooglePlacesDatasource {
  @override
  Future<List<Place>> getPlaces(String input) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=cities&language=en&components=country:ch&key=$googleApiKey');

    try {
      List<Place> result = [];
      final response = await http.get(url);

      final placesJson = jsonDecode(response.body);
      if (placesJson['status'] == 'ZERO_RESULT') {
        return result;
      } else if (placesJson['status'] == 'OK') {
        result =
            List<Map<String, dynamic>>.from(placesJson['predictions'] as List)
                .map(Place.fromJson)
                .toList();
      }

      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}

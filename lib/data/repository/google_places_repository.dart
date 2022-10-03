import 'package:brick_weather_app/data/datasource/google_places_datasource.dart';
import 'package:brick_weather_app/injection.dart';
import 'package:brick_weather_app/model/place.dart';

abstract class GooglePlacesRepository {
  Future<List<Place>> getPlaces(String input);
}

class GooglePlacesRepositoryImpl implements GooglePlacesRepository {
  GooglePlacesDatasource datasource = sl();
  @override
  Future<List<Place>> getPlaces(String input) => datasource.getPlaces(input);
}

import 'package:bloc/bloc.dart';
import 'package:brick_weather_app/data/repository/google_places_repository.dart';
import 'package:brick_weather_app/injection.dart';
import 'package:brick_weather_app/model/place.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_selection_bloc.freezed.dart';
part 'city_selection_event.dart';
part 'city_selection_state.dart';

class CitySelectionBloc extends Bloc<CitySelectionEvent, CitySelectionState> {
  CitySelectionBloc() : super(const _LoadInProgress()) {
    on<_DataFetched>(_onDataFetched);
  }
}

final GooglePlacesRepository googlePlacesRepository = sl();

Future<void> _onDataFetched(
  _DataFetched event,
  Emitter<CitySelectionState> emit,
) async {
  emit(const _LoadInProgress());
  try {
    final city = await googlePlacesRepository.getPlaces(event.city);

    emit(_LoadSuccess(city: city));
  } catch (e) {
    emit(_LoadFailure(e.toString()));
  }
}

part of 'city_selection_bloc.dart';


@freezed
class CitySelectionEvent with _$CitySelectionEvent {
  const factory CitySelectionEvent.dataFetched({
    required String city,
  }) = _DataFetched;
}
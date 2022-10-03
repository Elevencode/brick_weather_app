part of 'city_selection_bloc.dart';


@freezed
class CitySelectionState with _$CitySelectionState {
  const factory CitySelectionState.loadInProgress() = _LoadInProgress;
  const factory CitySelectionState.loadSuccess({
    required List<Place> city,
  }) = _LoadSuccess;
  const factory CitySelectionState.loadFailure(String errorText) = _LoadFailure;
}
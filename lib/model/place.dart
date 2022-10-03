import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const Place._();

  const factory Place({
     required String id,
     required String description,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) =>
      _$PlaceFromJson(json);
}

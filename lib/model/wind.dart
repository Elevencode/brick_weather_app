import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  const Wind._();

  const factory Wind({
    required double speed,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) =>
      _$WindFromJson(json);
}

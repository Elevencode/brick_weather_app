import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed
class Sys with _$Sys {
  const Sys._();

  const factory Sys({
     int? sunrise,
     int? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) =>
      _$SysFromJson(json);
}

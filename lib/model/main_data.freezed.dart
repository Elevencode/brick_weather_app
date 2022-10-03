// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainData _$MainDataFromJson(Map<String, dynamic> json) {
  return _MainData.fromJson(json);
}

/// @nodoc
mixin _$MainData {
  double get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDataCopyWith<MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDataCopyWith<$Res> {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) then) =
      _$MainDataCopyWithImpl<$Res>;
  $Res call(
      {double temp,
      int humidity,
      int pressure,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_max') double tempMax,
      @JsonKey(name: 'temp_min') double tempMin});
}

/// @nodoc
class _$MainDataCopyWithImpl<$Res> implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._value, this._then);

  final MainData _value;
  // ignore: unused_field
  final $Res Function(MainData) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? feelsLike = freezed,
    Object? tempMax = freezed,
    Object? tempMin = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MainDataCopyWith<$Res> implements $MainDataCopyWith<$Res> {
  factory _$$_MainDataCopyWith(
          _$_MainData value, $Res Function(_$_MainData) then) =
      __$$_MainDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double temp,
      int humidity,
      int pressure,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_max') double tempMax,
      @JsonKey(name: 'temp_min') double tempMin});
}

/// @nodoc
class __$$_MainDataCopyWithImpl<$Res> extends _$MainDataCopyWithImpl<$Res>
    implements _$$_MainDataCopyWith<$Res> {
  __$$_MainDataCopyWithImpl(
      _$_MainData _value, $Res Function(_$_MainData) _then)
      : super(_value, (v) => _then(v as _$_MainData));

  @override
  _$_MainData get _value => super._value as _$_MainData;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? feelsLike = freezed,
    Object? tempMax = freezed,
    Object? tempMin = freezed,
  }) {
    return _then(_$_MainData(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainData extends _MainData {
  const _$_MainData(
      {required this.temp,
      required this.humidity,
      required this.pressure,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'temp_max') required this.tempMax,
      @JsonKey(name: 'temp_min') required this.tempMin})
      : super._();

  factory _$_MainData.fromJson(Map<String, dynamic> json) =>
      _$$_MainDataFromJson(json);

  @override
  final double temp;
  @override
  final int humidity;
  @override
  final int pressure;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;

  @override
  String toString() {
    return 'MainData(temp: $temp, humidity: $humidity, pressure: $pressure, feelsLike: $feelsLike, tempMax: $tempMax, tempMin: $tempMin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainData &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(tempMin));

  @JsonKey(ignore: true)
  @override
  _$$_MainDataCopyWith<_$_MainData> get copyWith =>
      __$$_MainDataCopyWithImpl<_$_MainData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainDataToJson(
      this,
    );
  }
}

abstract class _MainData extends MainData {
  const factory _MainData(
      {required final double temp,
      required final int humidity,
      required final int pressure,
      @JsonKey(name: 'feels_like') required final double feelsLike,
      @JsonKey(name: 'temp_max') required final double tempMax,
      @JsonKey(name: 'temp_min') required final double tempMin}) = _$_MainData;
  const _MainData._() : super._();

  factory _MainData.fromJson(Map<String, dynamic> json) = _$_MainData.fromJson;

  @override
  double get temp;
  @override
  int get humidity;
  @override
  int get pressure;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(ignore: true)
  _$$_MainDataCopyWith<_$_MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

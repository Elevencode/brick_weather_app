// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'response':
      return WeatherDataResponse.fromJson(json);
    case 'ui':
      return WeatherDataUi.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WeatherData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WeatherData {
  @JsonKey(name: 'dt')
  int get datetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get city => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)
        response,
    required TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)
        ui,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherDataResponse value) response,
    required TResult Function(WeatherDataUi value) ui,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int datetime, @JsonKey(name: 'name') String? city});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$WeatherDataResponseCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataResponseCopyWith(_$WeatherDataResponse value,
          $Res Function(_$WeatherDataResponse) then) =
      __$$WeatherDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int datetime,
      List<Weather> weather,
      Wind wind,
      MainData main,
      Sys? sys,
      @JsonKey(name: 'name') String? city});

  $WindCopyWith<$Res> get wind;
  $MainDataCopyWith<$Res> get main;
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$WeatherDataResponseCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res>
    implements _$$WeatherDataResponseCopyWith<$Res> {
  __$$WeatherDataResponseCopyWithImpl(
      _$WeatherDataResponse _value, $Res Function(_$WeatherDataResponse) _then)
      : super(_value, (v) => _then(v as _$WeatherDataResponse));

  @override
  _$WeatherDataResponse get _value => super._value as _$WeatherDataResponse;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
    Object? main = freezed,
    Object? sys = freezed,
    Object? city = freezed,
  }) {
    return _then(_$WeatherDataResponse(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as int,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainData,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $MainDataCopyWith<$Res> get main {
    return $MainDataCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $SysCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataResponse extends WeatherDataResponse {
  const _$WeatherDataResponse(
      {@JsonKey(name: 'dt') required this.datetime,
      required final List<Weather> weather,
      required this.wind,
      required this.main,
      this.sys,
      @JsonKey(name: 'name') this.city,
      final String? $type})
      : _weather = weather,
        $type = $type ?? 'response',
        super._();

  factory _$WeatherDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataResponseFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int datetime;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final Wind wind;
  @override
  final MainData main;
  @override
  final Sys? sys;
  @override
  @JsonKey(name: 'name')
  final String? city;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherData.response(datetime: $datetime, weather: $weather, wind: $wind, main: $main, sys: $sys, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataResponse &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other.sys, sys) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(datetime),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(sys),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$WeatherDataResponseCopyWith<_$WeatherDataResponse> get copyWith =>
      __$$WeatherDataResponseCopyWithImpl<_$WeatherDataResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)
        response,
    required TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)
        ui,
  }) {
    return response(datetime, weather, wind, main, sys, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
  }) {
    return response?.call(datetime, weather, wind, main, sys, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(datetime, weather, wind, main, sys, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherDataResponse value) response,
    required TResult Function(WeatherDataUi value) ui,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataResponseToJson(
      this,
    );
  }
}

abstract class WeatherDataResponse extends WeatherData {
  const factory WeatherDataResponse(
      {@JsonKey(name: 'dt') required final int datetime,
      required final List<Weather> weather,
      required final Wind wind,
      required final MainData main,
      final Sys? sys,
      @JsonKey(name: 'name') final String? city}) = _$WeatherDataResponse;
  const WeatherDataResponse._() : super._();

  factory WeatherDataResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherDataResponse.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get datetime;
  List<Weather> get weather;
  Wind get wind;
  MainData get main;
  Sys? get sys;
  @override
  @JsonKey(name: 'name')
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataResponseCopyWith<_$WeatherDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherDataUiCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataUiCopyWith(
          _$WeatherDataUi value, $Res Function(_$WeatherDataUi) then) =
      __$$WeatherDataUiCopyWithImpl<$Res>;
  @override
  $Res call(
      {int datetime,
      String weatherType,
      String weatherDescription,
      double windSpeed,
      int temp,
      int humidity,
      int pressure,
      int feelsLike,
      int tempMax,
      int tempMin,
      String? city,
      int? sunrise,
      int? sunset});
}

/// @nodoc
class __$$WeatherDataUiCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res>
    implements _$$WeatherDataUiCopyWith<$Res> {
  __$$WeatherDataUiCopyWithImpl(
      _$WeatherDataUi _value, $Res Function(_$WeatherDataUi) _then)
      : super(_value, (v) => _then(v as _$WeatherDataUi));

  @override
  _$WeatherDataUi get _value => super._value as _$WeatherDataUi;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? weatherType = freezed,
    Object? weatherDescription = freezed,
    Object? windSpeed = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? feelsLike = freezed,
    Object? tempMax = freezed,
    Object? tempMin = freezed,
    Object? city = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$WeatherDataUi(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as int,
      weatherType: weatherType == freezed
          ? _value.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: weatherDescription == freezed
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as int,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDataUi extends WeatherDataUi {
  const _$WeatherDataUi(
      {required this.datetime,
      required this.weatherType,
      required this.weatherDescription,
      required this.windSpeed,
      required this.temp,
      required this.humidity,
      required this.pressure,
      required this.feelsLike,
      required this.tempMax,
      required this.tempMin,
      this.city,
      this.sunrise,
      this.sunset,
      final String? $type})
      : $type = $type ?? 'ui',
        super._();

  factory _$WeatherDataUi.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDataUiFromJson(json);

  @override
  final int datetime;
  @override
  final String weatherType;
  @override
  final String weatherDescription;
  @override
  final double windSpeed;
  @override
  final int temp;
  @override
  final int humidity;
  @override
  final int pressure;
  @override
  final int feelsLike;
  @override
  final int tempMax;
  @override
  final int tempMin;
  @override
  final String? city;
  @override
  final int? sunrise;
  @override
  final int? sunset;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherData.ui(datetime: $datetime, weatherType: $weatherType, weatherDescription: $weatherDescription, windSpeed: $windSpeed, temp: $temp, humidity: $humidity, pressure: $pressure, feelsLike: $feelsLike, tempMax: $tempMax, tempMin: $tempMin, city: $city, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataUi &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality()
                .equals(other.weatherType, weatherType) &&
            const DeepCollectionEquality()
                .equals(other.weatherDescription, weatherDescription) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(datetime),
      const DeepCollectionEquality().hash(weatherType),
      const DeepCollectionEquality().hash(weatherDescription),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset));

  @JsonKey(ignore: true)
  @override
  _$$WeatherDataUiCopyWith<_$WeatherDataUi> get copyWith =>
      __$$WeatherDataUiCopyWithImpl<_$WeatherDataUi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)
        response,
    required TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)
        ui,
  }) {
    return ui(datetime, weatherType, weatherDescription, windSpeed, temp,
        humidity, pressure, feelsLike, tempMax, tempMin, city, sunrise, sunset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
  }) {
    return ui?.call(datetime, weatherType, weatherDescription, windSpeed, temp,
        humidity, pressure, feelsLike, tempMax, tempMin, city, sunrise, sunset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'dt') int datetime,
            List<Weather> weather,
            Wind wind,
            MainData main,
            Sys? sys,
            @JsonKey(name: 'name') String? city)?
        response,
    TResult Function(
            int datetime,
            String weatherType,
            String weatherDescription,
            double windSpeed,
            int temp,
            int humidity,
            int pressure,
            int feelsLike,
            int tempMax,
            int tempMin,
            String? city,
            int? sunrise,
            int? sunset)?
        ui,
    required TResult orElse(),
  }) {
    if (ui != null) {
      return ui(
          datetime,
          weatherType,
          weatherDescription,
          windSpeed,
          temp,
          humidity,
          pressure,
          feelsLike,
          tempMax,
          tempMin,
          city,
          sunrise,
          sunset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherDataResponse value) response,
    required TResult Function(WeatherDataUi value) ui,
  }) {
    return ui(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
  }) {
    return ui?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherDataResponse value)? response,
    TResult Function(WeatherDataUi value)? ui,
    required TResult orElse(),
  }) {
    if (ui != null) {
      return ui(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDataUiToJson(
      this,
    );
  }
}

abstract class WeatherDataUi extends WeatherData {
  const factory WeatherDataUi(
      {required final int datetime,
      required final String weatherType,
      required final String weatherDescription,
      required final double windSpeed,
      required final int temp,
      required final int humidity,
      required final int pressure,
      required final int feelsLike,
      required final int tempMax,
      required final int tempMin,
      final String? city,
      final int? sunrise,
      final int? sunset}) = _$WeatherDataUi;
  const WeatherDataUi._() : super._();

  factory WeatherDataUi.fromJson(Map<String, dynamic> json) =
      _$WeatherDataUi.fromJson;

  @override
  int get datetime;
  String get weatherType;
  String get weatherDescription;
  double get windSpeed;
  int get temp;
  int get humidity;
  int get pressure;
  int get feelsLike;
  int get tempMax;
  int get tempMin;
  @override
  String? get city;
  int? get sunrise;
  int? get sunset;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataUiCopyWith<_$WeatherDataUi> get copyWith =>
      throw _privateConstructorUsedError;
}

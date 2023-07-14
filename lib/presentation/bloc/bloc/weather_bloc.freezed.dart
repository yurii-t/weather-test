// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude, String? city)
        getWeather,
    required TResult Function(String query) citySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult? Function(String query)? citySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult Function(String query)? citySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_CitySearch value) citySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_CitySearch value)? citySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_CitySearch value)? citySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetWeatherCopyWith<$Res> {
  factory _$$_GetWeatherCopyWith(
          _$_GetWeather value, $Res Function(_$_GetWeather) then) =
      __$$_GetWeatherCopyWithImpl<$Res>;
  @useResult
  $Res call({double? latitude, double? longitude, String? city});
}

/// @nodoc
class __$$_GetWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_GetWeather>
    implements _$$_GetWeatherCopyWith<$Res> {
  __$$_GetWeatherCopyWithImpl(
      _$_GetWeather _value, $Res Function(_$_GetWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_GetWeather(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetWeather implements _GetWeather {
  const _$_GetWeather({this.latitude, this.longitude, this.city});

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? city;

  @override
  String toString() {
    return 'WeatherEvent.getWeather(latitude: $latitude, longitude: $longitude, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWeather &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetWeatherCopyWith<_$_GetWeather> get copyWith =>
      __$$_GetWeatherCopyWithImpl<_$_GetWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude, String? city)
        getWeather,
    required TResult Function(String query) citySearch,
  }) {
    return getWeather(latitude, longitude, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult? Function(String query)? citySearch,
  }) {
    return getWeather?.call(latitude, longitude, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult Function(String query)? citySearch,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(latitude, longitude, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_CitySearch value) citySearch,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_CitySearch value)? citySearch,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_CitySearch value)? citySearch,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather(
      {final double? latitude,
      final double? longitude,
      final String? city}) = _$_GetWeather;

  double? get latitude;
  double? get longitude;
  String? get city;
  @JsonKey(ignore: true)
  _$$_GetWeatherCopyWith<_$_GetWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CitySearchCopyWith<$Res> {
  factory _$$_CitySearchCopyWith(
          _$_CitySearch value, $Res Function(_$_CitySearch) then) =
      __$$_CitySearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_CitySearchCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_CitySearch>
    implements _$$_CitySearchCopyWith<$Res> {
  __$$_CitySearchCopyWithImpl(
      _$_CitySearch _value, $Res Function(_$_CitySearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_CitySearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CitySearch implements _CitySearch {
  const _$_CitySearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'WeatherEvent.citySearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitySearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitySearchCopyWith<_$_CitySearch> get copyWith =>
      __$$_CitySearchCopyWithImpl<_$_CitySearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude, String? city)
        getWeather,
    required TResult Function(String query) citySearch,
  }) {
    return citySearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult? Function(String query)? citySearch,
  }) {
    return citySearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude, String? city)?
        getWeather,
    TResult Function(String query)? citySearch,
    required TResult orElse(),
  }) {
    if (citySearch != null) {
      return citySearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_CitySearch value) citySearch,
  }) {
    return citySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_CitySearch value)? citySearch,
  }) {
    return citySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_CitySearch value)? citySearch,
    required TResult orElse(),
  }) {
    if (citySearch != null) {
      return citySearch(this);
    }
    return orElse();
  }
}

abstract class _CitySearch implements WeatherEvent {
  const factory _CitySearch(final String query) = _$_CitySearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_CitySearchCopyWith<_$_CitySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<CityLocation> get citySuggests => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  String? get currentCity => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<CityLocation> citySuggests,
      Weather? weather,
      String? currentCity,
      Object? error});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? citySuggests = null,
    Object? weather = freezed,
    Object? currentCity = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      citySuggests: null == citySuggests
          ? _value.citySuggests
          : citySuggests // ignore: cast_nullable_to_non_nullable
              as List<CityLocation>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      currentCity: freezed == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<CityLocation> citySuggests,
      Weather? weather,
      String? currentCity,
      Object? error});
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? citySuggests = null,
    Object? weather = freezed,
    Object? currentCity = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_WeatherState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      citySuggests: null == citySuggests
          ? _value._citySuggests
          : citySuggests // ignore: cast_nullable_to_non_nullable
              as List<CityLocation>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      currentCity: freezed == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.status,
      required final List<CityLocation> citySuggests,
      this.weather,
      this.currentCity,
      this.error})
      : _citySuggests = citySuggests;

  @override
  final BlocStatus status;
  final List<CityLocation> _citySuggests;
  @override
  List<CityLocation> get citySuggests {
    if (_citySuggests is EqualUnmodifiableListView) return _citySuggests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_citySuggests);
  }

  @override
  final Weather? weather;
  @override
  final String? currentCity;
  @override
  final Object? error;

  @override
  String toString() {
    return 'WeatherState(status: $status, citySuggests: $citySuggests, weather: $weather, currentCity: $currentCity, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._citySuggests, _citySuggests) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.currentCity, currentCity) ||
                other.currentCity == currentCity) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_citySuggests),
      weather,
      currentCity,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required final BlocStatus status,
      required final List<CityLocation> citySuggests,
      final Weather? weather,
      final String? currentCity,
      final Object? error}) = _$_WeatherState;

  @override
  BlocStatus get status;
  @override
  List<CityLocation> get citySuggests;
  @override
  Weather? get weather;
  @override
  String? get currentCity;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

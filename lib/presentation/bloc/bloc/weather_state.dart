part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required BlocStatus status,
    required List<CityLocation> citySuggests,
    Weather? weather,
    String? currentCity,
    Object? error,
  }) = _WeatherState;
}

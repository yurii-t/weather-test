part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeather({
    double? latitude,
    double? longitude,
    String? city,
  }) = _GetWeather;
  const factory WeatherEvent.citySearch(
    String query,
  ) = _CitySearch;
}

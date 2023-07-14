import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_test_task/repositories/gateway/weather_repository.dart';
import 'package:weather_test_task/repositories/models/city_location.dart';
import 'package:weather_test_task/repositories/models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Weather> callWeatherAPi({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=temperature_2m,precipitation_probability,rain,showers,snowfall,weathercode,visibility&daily=weathercode,temperature_2m_max,temperature_2m_min,precipitation_probability_max&current_weather=true&timeformat=unixtime&timezone=auto&forecast_days=16&models=best_match',
      );
      final http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedJson = json.decode(response.body);

        return Weather.fromMap(decodedJson);
      } else {
        throw Exception('Failed to load weather data');
      }
    } on Exception catch (e) {
      throw Exception('Failed to load weather data $e');
    }
  }

  @override
  Future<List<CityLocation>> locationSearch(String query) async {
    try {
      final url = Uri.parse(
        'https://geocoding-api.open-meteo.com/v1/search?name=$query&count=10&language=en&format=json',
      );
      final http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        final decodedJsonList = json.decode(response.body)['results'] == null
            ? []
            : json.decode(response.body)['results'] as List;

        return decodedJsonList.map((e) => CityLocation.fromMap(e)).toList();
      } else {
        throw Exception('Failed to load weather data');
      }
    } on Exception catch (e) {
      throw Exception('Failed to load weather data $e');
    }
  }
}

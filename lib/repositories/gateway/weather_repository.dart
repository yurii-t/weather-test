import 'package:weather_test_task/repositories/models/city_location.dart';
import 'package:weather_test_task/repositories/models/weather_model.dart';

abstract class WeatherRepository {
  Future<Weather> callWeatherAPi({
    required double latitude,
    required double longitude,
  });
  Future<List<CityLocation>> locationSearch(String query);
}

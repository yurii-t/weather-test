import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:weather_test_task/util/weather_code_converter.dart';

class CurrentWeather extends Equatable {
  final double temperature;
  final double windspeed;
  final double winddirection;
  final String weathercode;
  final int isDay;
  final int time;
  const CurrentWeather({
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.weathercode,
    required this.isDay,
    required this.time,
  });

  CurrentWeather copyWith({
    double? temperature,
    double? windspeed,
    double? winddirection,
    String? weathercode,
    int? isDay,
    int? time,
  }) {
    return CurrentWeather(
      temperature: temperature ?? this.temperature,
      windspeed: windspeed ?? this.windspeed,
      winddirection: winddirection ?? this.winddirection,
      weathercode: weathercode ?? this.weathercode,
      isDay: isDay ?? this.isDay,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temperature': temperature,
      'windspeed': windspeed,
      'winddirection': winddirection,
      'weathercode': weathercode,
      'is_day': isDay,
      'time': time,
    };
  }

  factory CurrentWeather.fromMap(Map<String, dynamic> map) {
    return CurrentWeather(
      temperature: map['temperature'] as double,
      windspeed: map['windspeed'] as double,
      winddirection: map['winddirection'] as double,
      weathercode: WeatherCodeConverter.convert(map['weathercode'] as int),
      isDay: map['is_day'] as int,
      time: map['time'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentWeather.fromJson(String source) =>
      CurrentWeather.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      temperature,
      windspeed,
      winddirection,
      weathercode,
      isDay,
      time,
    ];
  }
}

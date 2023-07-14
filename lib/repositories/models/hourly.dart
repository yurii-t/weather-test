import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:weather_test_task/util/weather_code_converter.dart';

class Hourly extends Equatable {
  final List<int> time;
  final List<double?> temperature2m;
  final List<int?> precipitationProbability;
  final List<double?> rain;
  final List<double?> showers;
  final List<double?> snowfall;
  final List<String> weathercode;
  final List<double?> visibility;
  const Hourly({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.rain,
    required this.showers,
    required this.snowfall,
    required this.weathercode,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature_2m': temperature2m,
      'precipitation_probability': precipitationProbability,
      'rain': rain,
      'showers': showers,
      'snowfall': snowfall,
      'weathercode': weathercode,
      'visibility': visibility,
    };
  }

  factory Hourly.fromMap(Map<String, dynamic> map) {
    return Hourly(
      time: List<int>.from(map['time'] as List<dynamic>),
      temperature2m: List<double?>.from(map['temperature_2m'] as List<dynamic>),
      precipitationProbability:
          List<int?>.from(map['precipitation_probability'] as List<dynamic>),
      rain: List<double?>.from(map['rain'] as List<dynamic>),
      showers: List<double?>.from(map['showers'] as List<dynamic>),
      snowfall: List<double?>.from(map['snowfall'] as List<dynamic>),
      weathercode: List<String>.from((map['weathercode'] as List<dynamic>)
          .map((code) => WeatherCodeConverter.convert(code ?? 0))),
      visibility: List<double?>.from(map['visibility'] as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hourly.fromJson(String source) =>
      Hourly.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      time,
      temperature2m,
      precipitationProbability,
      rain,
      showers,
      snowfall,
      weathercode,
      visibility,
    ];
  }

  Hourly copyWith({
    List<int>? time,
    List<double?>? temperature2m,
    List<int?>? precipitationProbability,
    List<double?>? rain,
    List<double?>? showers,
    List<double?>? snowfall,
    List<String>? weathercode,
    List<double?>? visibility,
  }) {
    return Hourly(
      time: time ?? this.time,
      temperature2m: temperature2m ?? this.temperature2m,
      precipitationProbability:
          precipitationProbability ?? this.precipitationProbability,
      rain: rain ?? this.rain,
      showers: showers ?? this.showers,
      snowfall: snowfall ?? this.snowfall,
      weathercode: weathercode ?? this.weathercode,
      visibility: visibility ?? this.visibility,
    );
  }
}

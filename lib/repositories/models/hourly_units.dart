import 'dart:convert';

import 'package:equatable/equatable.dart';

class HourlyUnits extends Equatable {
  final String time;
  final String temperature2m;
  final String? precipitationProbability;
  final String rain;
  final String showers;
  final String snowfall;
  final String weathercode;
  final String visibility;
  const HourlyUnits({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.rain,
    required this.showers,
    required this.snowfall,
    required this.weathercode,
    required this.visibility,
  });

  @override
  List<Object?> get props {
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

  HourlyUnits copyWith({
    String? time,
    String? temperature2m,
    String? precipitationProbability,
    String? rain,
    String? showers,
    String? snowfall,
    String? weathercode,
    String? visibility,
  }) {
    return HourlyUnits(
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature_2m': temperature2m,
      'precipitationProbability': precipitationProbability,
      'rain': rain,
      'showers': showers,
      'snowfall': snowfall,
      'weathercode': weathercode,
      'visibility': visibility,
    };
  }

  factory HourlyUnits.fromMap(Map<String, dynamic> map) {
    return HourlyUnits(
      time: map['time'] as String,
      temperature2m: map['temperature_2m'] as String,
      precipitationProbability: map['precipitationProbability'] as String?,
      rain: map['rain'] as String,
      showers: map['showers'] as String,
      snowfall: map['snowfall'] as String,
      weathercode: map['weathercode'] as String,
      visibility: map['visibility'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HourlyUnits.fromJson(String source) =>
      HourlyUnits.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}

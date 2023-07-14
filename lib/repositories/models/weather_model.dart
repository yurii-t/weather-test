import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:weather_test_task/repositories/models/current_weather.dart';
import 'package:weather_test_task/repositories/models/daily.dart';
import 'package:weather_test_task/repositories/models/daily_units.dart';
import 'package:weather_test_task/repositories/models/hourly.dart';
import 'package:weather_test_task/repositories/models/hourly_units.dart';

class Weather extends Equatable {
  final double latitude;
  final double longitude;
  final double generationtimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final CurrentWeather currentWeather;
  final HourlyUnits hourlyUnits;
  final Hourly hourly;
  final DailyUnits dailyUnits;
  final Daily daily;
  const Weather({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeather,
    required this.hourlyUnits,
    required this.hourly,
    required this.dailyUnits,
    required this.daily,
  });

  Weather copyWith({
    double? latitude,
    double? longitude,
    double? generationtimeMs,
    int? utcOffsetSeconds,
    String? timezone,
    String? timezoneAbbreviation,
    double? elevation,
    CurrentWeather? currentWeather,
    HourlyUnits? hourlyUnits,
    Hourly? hourly,
    DailyUnits? dailyUnits,
    Daily? daily,
  }) {
    return Weather(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      generationtimeMs: generationtimeMs ?? this.generationtimeMs,
      utcOffsetSeconds: utcOffsetSeconds ?? this.utcOffsetSeconds,
      timezone: timezone ?? this.timezone,
      timezoneAbbreviation: timezoneAbbreviation ?? this.timezoneAbbreviation,
      elevation: elevation ?? this.elevation,
      currentWeather: currentWeather ?? this.currentWeather,
      hourlyUnits: hourlyUnits ?? this.hourlyUnits,
      hourly: hourly ?? this.hourly,
      dailyUnits: dailyUnits ?? this.dailyUnits,
      daily: daily ?? this.daily,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'generationtime_ms': generationtimeMs,
      'utc_offset_seconds': utcOffsetSeconds,
      'timezone': timezone,
      'timezone_abbreviation': timezoneAbbreviation,
      'elevation': elevation,
      'current_weather': currentWeather.toMap(),
      'hourly_units': hourlyUnits.toMap(),
      'hourly': hourly.toMap(),
      'daily_units': dailyUnits.toMap(),
      'daily': daily.toMap(),
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      generationtimeMs: map['generationtime_ms'] as double,
      utcOffsetSeconds: map['utc_offset_seconds'] as int,
      timezone: map['timezone'] as String,
      timezoneAbbreviation: map['timezone_abbreviation'] as String,
      elevation: map['elevation'] as double,
      currentWeather: CurrentWeather.fromMap(
        map['current_weather'] as Map<String, dynamic>,
      ),
      hourlyUnits:
          HourlyUnits.fromMap(map['hourly_units'] as Map<String, dynamic>),
      hourly: Hourly.fromMap(map['hourly']),
      dailyUnits: DailyUnits.fromMap(map['daily_units']),
      daily: Daily.fromMap(map['daily']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentWeather,
      hourlyUnits,
      hourly,
    ];
  }
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:weather_test_task/util/weather_code_converter.dart';

class Daily extends Equatable {
  final List<DateTime> time;
  final List<double?> temperature2mMax;
  final List<double?> temperature2mMin;
  final List<int?> precipitationProbabilityMax;

  final List<String> weathercode;
  const Daily({
    required this.time,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.precipitationProbabilityMax,
    required this.weathercode,
  });

  Daily copyWith({
    List<DateTime>? time,
    List<double>? temperature2mMax,
    List<double>? temperature2mMin,
    List<int?>? precipitationProbabilityMax,
    List<String>? weathercode,
  }) {
    return Daily(
      time: time ?? this.time,
      temperature2mMax: temperature2mMax ?? this.temperature2mMax,
      temperature2mMin: temperature2mMin ?? this.temperature2mMin,
      precipitationProbabilityMax:
          precipitationProbabilityMax ?? this.precipitationProbabilityMax,
      weathercode: weathercode ?? this.weathercode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature2mMax': temperature2mMax,
      'temperature2mMin': temperature2mMin,
      'precipitationProbabilityMax': precipitationProbabilityMax,
      'weathercode': weathercode,
    };
  }

  factory Daily.fromMap(Map<String, dynamic> map) {
    return Daily(
      time: List<DateTime>.from((map['time'] as List<dynamic>)
          .map((e) => DateTime.fromMillisecondsSinceEpoch((e * 1000) as int))),
      temperature2mMax:
          List<double>.from(map['temperature_2m_max'] as List<dynamic>),
      temperature2mMin:
          List<double>.from(map['temperature_2m_min'] as List<dynamic>),
      precipitationProbabilityMax: List<int?>.from(
        map['precipitation_probability_max'] as List<dynamic>,
      ),
      weathercode: List<String>.from((map['weathercode'] as List<dynamic>)
          .map((code) => WeatherCodeConverter.convert(code))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Daily.fromJson(String source) =>
      Daily.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      time,
      temperature2mMax,
      temperature2mMin,
      precipitationProbabilityMax,
      weathercode,
    ];
  }
}

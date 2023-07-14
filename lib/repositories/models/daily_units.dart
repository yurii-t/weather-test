import 'dart:convert';

import 'package:equatable/equatable.dart';

class DailyUnits extends Equatable {
  final String time;
  final String? temperature2mMax;
  final String? temperature2mMin;
  final String? precipitationProbabilityMax;
  const DailyUnits({
    required this.time,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.precipitationProbabilityMax,
  });

  DailyUnits copyWith({
    String? time,
    String? temperature2mMax,
    String? temperature2mMin,
    String? precipitationProbabilityMax,
  }) {
    return DailyUnits(
      time: time ?? this.time,
      temperature2mMax: temperature2mMax ?? this.temperature2mMax,
      temperature2mMin: temperature2mMin ?? this.temperature2mMin,
      precipitationProbabilityMax:
          precipitationProbabilityMax ?? this.precipitationProbabilityMax,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature2mMax': temperature2mMax,
      'temperature2mMin': temperature2mMin,
      'precipitationProbabilityMax': precipitationProbabilityMax,
    };
  }

  factory DailyUnits.fromMap(Map<String, dynamic> map) {
    return DailyUnits(
      time: map['time'] as String,
      temperature2mMax: map['temperature2mMax'] as String?,
      temperature2mMin: map['temperature2mMin'] as String?,
      precipitationProbabilityMax:
          map['precipitationProbabilityMax'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory DailyUnits.fromJson(String source) =>
      DailyUnits.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [time, temperature2mMax, temperature2mMin, precipitationProbabilityMax];
}

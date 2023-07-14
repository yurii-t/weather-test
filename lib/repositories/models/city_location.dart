import 'dart:convert';

import 'package:equatable/equatable.dart';

class CityLocation extends Equatable {
  final int id;
  final String name;
  final double latitude;
  final double longitude;
  final String? countryCode;
  const CityLocation({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
  });

  CityLocation copyWith({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
    String? countryCode,
  }) {
    return CityLocation(
      id: id ?? this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      countryCode: countryCode ?? this.countryCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'country_code': countryCode,
    };
  }

  factory CityLocation.fromMap(Map<String, dynamic> map) {
    return CityLocation(
      id: map['id'] as int,
      name: map['name'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      countryCode: map['country_code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CityLocation.fromJson(String source) =>
      CityLocation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      latitude,
      longitude,
      countryCode,
    ];
  }
}

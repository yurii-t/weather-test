import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_test_task/presentation/bloc/bloc/status.dart';
import 'package:weather_test_task/repositories/gateway/weather_repository_impl.dart';
import 'package:weather_test_task/repositories/models/city_location.dart';
import 'package:weather_test_task/repositories/models/weather_model.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

const defaultPosition = Position(
  longitude: 24.02324,
  latitude: 49.83826,
  timestamp: null,
  accuracy: 0,
  altitude: 0,
  heading: 0,
  speed: 0,
  speedAccuracy: 0,
);

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepositoryImpl remoteGatewayImpl;
  WeatherBloc(this.remoteGatewayImpl)
      : super(
          const WeatherState(
            status: BlocStatus.loading,
            citySuggests: [],
          ),
        ) {
    on<WeatherEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getWeather: (latitude, longitude, city) => _getWeather(
            emit: emit,
            latitude: latitude,
            longitude: longitude,
            city: city,
          ),
          citySearch: (query) => _citySearch(emit: emit, query: query),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getWeather({
    required Emitter<WeatherState> emit,
    required double? latitude,
    required double? longitude,
    required String? city,
  }) async {
    if (latitude == null && longitude == null) {
      final position = await getCurrentPosition();
      latitude = position.latitude;
      longitude = position.longitude;
    }

    final weather = await remoteGatewayImpl.callWeatherAPi(
      latitude: latitude ?? defaultPosition.latitude,
      longitude: longitude ?? defaultPosition.longitude,
    );
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(weather.latitude, weather.longitude);

    final Placemark place = placemarks[0];
    final cityName = place.locality;

    emit(state.copyWith(
      weather: weather,
      status: BlocStatus.loaded,
      currentCity: city ?? cityName,
      citySuggests: [],
    ));
  }

  Future<void> _citySearch({
    required Emitter<WeatherState> emit,
    required String query,
  }) async {
    final coordinates = await remoteGatewayImpl.locationSearch(query);

    emit(state.copyWith(citySuggests: coordinates));
  }

  Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return defaultPosition;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return defaultPosition;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return defaultPosition;
    }

    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }

  Future<WeatherState> _errorState(Object error) async => WeatherState(
        weather: state.weather,
        error: error,
        status: BlocStatus.error,
        citySuggests: [],
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test_task/presentation/bloc/bloc/weather_bloc.dart';
import 'package:weather_test_task/presentation/pages/weather_page.dart';
import 'package:weather_test_task/repositories/gateway/weather_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<WeatherRepositoryImpl>(
      create: (context) => WeatherRepositoryImpl(),
      child: BlocProvider(
        create: (context) => WeatherBloc(context.read<WeatherRepositoryImpl>())
          ..add(const WeatherEvent.getWeather()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          home: const WeatherPage(),
        ),
      ),
    );
  }
}

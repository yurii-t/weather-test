import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_test_task/presentation/bloc/bloc/status.dart';
import 'package:weather_test_task/presentation/bloc/bloc/weather_bloc.dart';
import 'package:weather_test_task/presentation/pages/search_page.dart';
import 'package:weather_test_task/presentation/pages/widgets/weather_error.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (120 - kTextTabBarHeight);
  }

  @override
  Widget build(BuildContext context) {
    const background = Color.fromARGB(255, 245, 244, 244);

    return Scaffold(
      backgroundColor: background,
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state.status == BlocStatus.loaded) {
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  backgroundColor: background,
                  elevation: 0,
                  shadowColor: background,
                  floating: false,
                  pinned: true,
                  centerTitle: true,
                  surfaceTintColor: background,
                  expandedHeight: 300,
                  actions: [
                    IconButton(
                      iconSize: 34,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const SearchPage(),
                        ),
                      ),
                      icon: const Icon(Icons.search),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: !_isSliverAppBarExpanded
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                '${state.weather?.currentWeather.weathercode}',
                                style: const TextStyle(
                                  fontSize: 65,
                                ),
                              ),
                              Text(
                                '${state.currentCity}',
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${state.weather?.currentWeather.temperature.toStringAsFixed(0)}°',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${state.weather?.currentWeather.weathercode}',
                                style: const TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${state.currentCity}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${state.weather?.currentWeather.temperature.toStringAsFixed(0)}°',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      '16 day forecast',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: state.weather?.daily.time.length ?? 0,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (index == 0)
                            const Text('Today')
                          else
                            Text(DateFormat('MMM d').format(
                              state.weather?.daily.time[index] ??
                                  DateTime.now(),
                            )),
                          Text('${state.weather?.daily.weathercode[index]}'),
                          Text(
                            '🌡️ Min ${state.weather?.daily.temperature2mMin[index]?.toStringAsFixed(0)}°',
                          ),
                          Text(
                            '🌡️ Max ${state.weather?.daily.temperature2mMax[index]?.toStringAsFixed(0)}°',
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            );
          }
          if (state.status == BlocStatus.loading) {
            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(),
              ),
            );
          }

          return const WeatherError();
        },
      ),
    );
  }
}

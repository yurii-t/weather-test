import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test_task/presentation/bloc/bloc/status.dart';
import 'package:weather_test_task/presentation/bloc/bloc/weather_bloc.dart';
import 'package:weather_test_task/presentation/pages/widgets/weather_error.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const background = Color.fromARGB(255, 245, 244, 244);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        shadowColor: background,
        backgroundColor: background,
        surfaceTintColor: background,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              onSubmitted: (value) {
                context.read<WeatherBloc>().add(WeatherEvent.citySearch(value));
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state.status == BlocStatus.loaded) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: state.citySuggests.isEmpty
                  ? const SizedBox.shrink()
                  : Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: state.citySuggests.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<WeatherBloc>().add(
                                    WeatherEvent.getWeather(
                                      latitude:
                                          state.citySuggests[index].latitude,
                                      longitude:
                                          state.citySuggests[index].longitude,
                                      city: state.citySuggests[index].name,
                                    ),
                                  );
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    state.citySuggests[index].name,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  '${state.citySuggests[index].countryCode}',
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            );
          }

          return const WeatherError();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WeatherError extends StatelessWidget {
  const WeatherError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const errorColor = Colors.red;

    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            color: errorColor,
            size: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Somthing went wrong.Try again',
            style: TextStyle(color: errorColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/servies/weather_serv.dart';
import 'cubit/counter_cubit.dart';



void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(WeatherService()),
    child: WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: BlocProvider
            .of<CounterCubit>(context).weatherModel== null
            ? Colors.blue
            : BlocProvider
            .of<CounterCubit>(context)
            .weatherModel!
            .getThemeColor(),
      ),
      home: HomePage(),
    );
  }
}

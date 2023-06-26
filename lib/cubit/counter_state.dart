part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class WeatherLoading extends CounterState {}
class WeatherSuccess extends CounterState {}
class WeatherFailure extends CounterState {}
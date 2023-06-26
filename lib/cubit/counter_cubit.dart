import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/weather_models.dart';
import '../servies/weather_serv.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(this.weatherService) : super(CounterInitial());
  WeatherService weatherService;
  String? cityName;
  WeatherModel? weatherModel;
  void getWeather({required String cityName})async{
    emit(WeatherLoading());
    try{
      weatherModel= await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    }catch(c){
      emit(WeatherFailure());
    }
  }
}

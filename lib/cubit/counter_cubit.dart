
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterState(counterValue: 0));
  void increment() => emit(CounterState(counterValue: state.counterValue + 1,wasIncremented: true));
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1,wasIncremented: false));
}
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() {
    int nextCounterVal = state.counter + 1;
    emit(CounterChanged(nextCounterVal, _calculateTotal(nextCounterVal)));
  }

  void decrement() {
    int nextCounterVal = state.counter - 1;
    emit(CounterChanged(nextCounterVal, _calculateTotal(nextCounterVal)));
  }

  int _calculateTotal(int counter) {
    return counter
        .toString()
        .split('')
        .map((currentNum) => int.parse(currentNum))
        .reduce((value, element) => value + element);
  }
}

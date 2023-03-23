part of 'counter_cubit.dart';

@immutable
abstract class CounterState extends Equatable {
  final int counter;
  final int total;

  const CounterState(this.counter, this.total);

  @override
  List<Object?> get props => [counter, total];
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0, 0);
}

class CounterChanged extends CounterState {
  const CounterChanged(super.counter, super.total);
}

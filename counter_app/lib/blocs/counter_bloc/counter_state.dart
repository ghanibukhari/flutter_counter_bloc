part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);

  @override
  List<Object> get props => [counter];
}

class IncrementState extends CounterState {
  const IncrementState(int increasedValue) : super(counter: increasedValue);

  @override
  List<Object?> get props => [counter];
}

class DecrementState extends CounterState {
  const DecrementState(int decreasedValue) : super(counter: decreasedValue);

  @override
  List<Object?> get props => [counter];
}

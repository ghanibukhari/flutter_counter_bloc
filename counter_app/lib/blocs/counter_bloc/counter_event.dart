part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementButtonPressed extends CounterEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class DecrementButtonPressed extends CounterEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

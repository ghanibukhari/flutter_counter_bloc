import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<IncrementButtonPressed>((event, emit) {
      emit(IncrementState(state.counter + 1));
    });
    on<DecrementButtonPressed>((event, emit) {
      emit(DecrementState(state.counter - 1));
    });
  }
}

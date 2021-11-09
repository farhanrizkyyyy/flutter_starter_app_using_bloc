import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter_event.dart';
import 'package:latihan_bloc/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      yield CounterState(state.value + 1);
    } else if (event is Decrement) {
      yield CounterState(state.value - 1);
    } else {
      yield CounterState(0);
    }
  }
}

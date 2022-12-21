import 'package:bloc/bloc.dart';

import 'demo_event.dart';
import 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  int n=0;
  DemoBloc() : super(DemoState().init()) {

    on<InitEvent>((event, emit) {
      n=event.i;
      emit(increment(n));
    });

    on<IncrementEvent>((event, emit) {
      n++;
      emit(increment(n));
    });
    on<DecrementEvent>((event, emit) {
      n--;
      emit(decrement(n));
    });
  }


}

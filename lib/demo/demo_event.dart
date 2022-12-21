import 'package:firstapp/blocdemo/demo_bloc.dart';

abstract class DemoEvent {}

class InitEvent extends DemoEvent {

  int i;
  InitEvent(this.i);

}

class IncrementEvent extends DemoEvent
{

}
class DecrementEvent extends DemoEvent
{

}
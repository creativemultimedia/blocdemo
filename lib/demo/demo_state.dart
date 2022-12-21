import 'package:firstapp/blocdemo/demo_bloc.dart';

class DemoState {
  DemoState init() {
    return DemoState();
  }

  DemoState clone() {
    return DemoState();
  }
}
class increment extends DemoState
{
  int a;
  increment(this.a);

}
class decrement extends DemoState
{
  int a;
  decrement(this.a);

}
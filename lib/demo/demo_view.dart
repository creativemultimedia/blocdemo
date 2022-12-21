import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'demo_bloc.dart';
import 'demo_event.dart';
import 'demo_state.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DemoBloc()..add(InitEvent(0)),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<DemoBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            bloc.add(DecrementEvent());
          }, child: Text("-")),
          BlocBuilder<DemoBloc,DemoState>(
            builder: (context, state) {
              if(state is increment)
                {
                  return Text("${state.a}");
                }
              else if(state is decrement)
              {
                return Text("${state.a}");
              }
              else {
                return Text("0");
              }
              },
          ),
          ElevatedButton(onPressed: () {
            bloc.add(IncrementEvent());
          }, child: Text("+"))

        ],
      ),
    );
  }
}


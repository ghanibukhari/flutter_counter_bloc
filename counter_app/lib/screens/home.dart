import 'package:counter_app/blocs/counter_bloc/counter_bloc.dart';
import 'package:counter_app/utils/app_alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: _buildMainView(),
    );
  }

  // build main view
  Widget _buildMainView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocConsumer<CounterBloc, CounterState>(
            listener: (context, state) {
              if (state is IncrementState) {
                AppAlerts.showSnackInfo(context, 'Successfully Increased');
              }
              if (state is DecrementState) {
                AppAlerts.showSnackInfo(context, 'Successfully Decreased');
              }
            },
            builder: (context, state) {
              return Text(
                '${state.counter}',
                style: const TextStyle(fontSize: 48.0),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(IncrementButtonPressed()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16.0),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(DecrementButtonPressed()),
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:cubit_demo/cubit_demo/cubit/counter_cubit.dart';
import 'package:cubit_demo/cubit_demo/ui/inc_dec_screen.dart';
import 'package:cubit_demo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CounterDemo-Cubit')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, counter) {
          return Center(
            child: Text(
              '$counter',
              style: const TextStyle(fontSize: 55),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatorKey.currentState?.push(MaterialPageRoute(
            builder: (_) => IncDecScreen(),
          ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

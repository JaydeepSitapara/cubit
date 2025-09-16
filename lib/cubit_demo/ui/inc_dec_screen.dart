import 'package:cubit_demo/cubit_demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inc, Dec '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: Text('Minus'),
            ),
          ],
        ),
      ),
    );
  }
}

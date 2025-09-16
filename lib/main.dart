import 'package:cubit_demo/cubit_demo/cubit/counter_cubit.dart';
import 'package:cubit_demo/cubit_demo/ui/couter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        home: const CounterScreen(),
      ),
    );
  }
}

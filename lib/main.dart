import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/presentation/router/app_router.dart';
import 'package:flutter_cubit/presentation/screens/home_screen.dart';
import 'package:flutter_cubit/presentation/screens/second_screen.dart';
import 'package:flutter_cubit/presentation/screens/third_screen.dart';

import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cubit',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}

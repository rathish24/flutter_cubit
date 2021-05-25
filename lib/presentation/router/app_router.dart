import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/logic/cubit/counter_cubit.dart';
import 'package:flutter_cubit/presentation/screens/home_screen.dart';
import 'package:flutter_cubit/presentation/screens/second_screen.dart';
import 'package:flutter_cubit/presentation/screens/third_screen.dart';

class AppRouter {

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) =>
              HomeScreen(
                title: "Home Screen",
                color: Colors.blueAccent,
              ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) =>
              SecondScreen(
                title: "Second Screen",
                color: Colors.redAccent,
              ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) =>
              ThirdScreen(
                title: "Thirst Screen",
                color: Colors.greenAccent,
              ),
        );
      default:
        return null;
    }
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/constants/enums.dart';

abstract class InternetState {}

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;
  InternetConnected({@required this.connectionType});

}

class InternetDisconnected extends InternetState {}

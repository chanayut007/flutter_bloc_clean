import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_clean/common/theme.dart';
import 'package:flutter_bloc_clean/di/injector.dart';
import 'package:flutter_bloc_clean/route/route.dart';
import 'package:flutter_bloc_clean/route/route_name.dart';
import 'package:flutter_bloc_clean/route/route_service.dart';
import 'package:flutter_bloc_clean/scaffold/scaffold_message_service.dart';
import 'package:logger/logger.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();

    initConnectivity();

    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      routes: R.routes,
      initialRoute: RouteName.creditCardList,
      navigatorKey: RouteService().navigatorKey,
      scaffoldMessengerKey: ScaffoldMessageService().scaffoldMessageKey,
    );
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      Logger().d("Couldn't check connectivity status", error: e);
      return;
    }

    if (!mounted) {
      return Future.value();
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
    if (_connectionStatus == ConnectivityResult.none) {
      handleInternetConnectionLost();
    }
  }

  void handleInternetConnectionLost() {
    final scaffoldMessengerService = ScaffoldMessageService();
    final BuildContext? messageContext = scaffoldMessengerService.scaffoldMessageKey.currentContext;
    if (messageContext != null) {
      scaffoldMessengerService.showConnectionLost();
    }
  }
}

import 'package:flutter/material.dart';

class ScaffoldMessageService {
  static final ScaffoldMessageService _instance = ScaffoldMessageService._internal();

  factory ScaffoldMessageService() {
    return _instance;
  }

  ScaffoldMessageService._internal();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessageKey = GlobalKey<ScaffoldMessengerState>();

  void showConnectionLost() =>
      scaffoldMessageKey.currentState!.showSnackBar(const SnackBar(content: Text("กรุณาตรวจสอบอินเทอร์เน็ต")));

}
import 'package:flutter/cupertino.dart';

class RouteService {
  static final RouteService _instance = RouteService._internal();

  factory RouteService() {
    return _instance;
  }

  RouteService._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, [var params]) async {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: params);
  }

  void pop([var result]) => navigatorKey.currentState!.pop(result);

  void showOverlay(Widget screen) {
    navigatorKey.currentState!.push(_createRoute(screen));
  }

  Route _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => screen,
      transitionsBuilder: (context, animation1, animation2, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation1.drive(tween),
          child: child,
        );
      }
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ubereats/core/routes/app_routes.dart';
import '../../presentation/screens/auth_screens/login_screen.dart';
import '../../presentation/screens/auth_screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('Page not found'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ubereats/core/routes/app_routes.dart';
import 'package:ubereats/presentation/screens/auth_screens/add_email_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/add_name_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/otp_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/terms-and-condition-screen.dart';
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
      case AppRoutes.otp:
        return MaterialPageRoute(builder: (_) => OtpScreen()); 
      case AppRoutes.email:
        return MaterialPageRoute(builder: (_)=> AddEmailScreen());
      case AppRoutes.name:
        return MaterialPageRoute(builder: (_)=> AddNameScreen());
      case AppRoutes.termsandcondition:
        return MaterialPageRoute(builder: (_)=> TermsAndConditionScreen());
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

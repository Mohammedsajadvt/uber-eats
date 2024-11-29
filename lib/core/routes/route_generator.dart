import 'package:flutter/material.dart';
import 'package:ubereats/core/routes/app_routes.dart';
import 'package:ubereats/presentation/screens/auth_screens/add_email_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/add_location_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/add_name_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/address_info_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/location_allow_access_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/otp_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/push_notification_screen.dart';
import 'package:ubereats/presentation/screens/auth_screens/terms_and_condition_screen.dart';
import 'package:ubereats/presentation/widgets/bottom_nav_bar.dart';
import '../../presentation/screens/auth_screens/login_screen.dart';
import '../../presentation/screens/auth_screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // Auth Screens
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.otp:
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case AppRoutes.email:
        return MaterialPageRoute(builder: (_) => AddEmailScreen());
      case AppRoutes.name:
        return MaterialPageRoute(builder: (_) => AddNameScreen());
      case AppRoutes.termsandcondition:
        return MaterialPageRoute(builder: (_) => TermsAndConditionScreen());
      case AppRoutes.locationallow:
        return MaterialPageRoute(builder: (_) => LocationAllowAccessScreen());
      case AppRoutes.addlocation:
        return MaterialPageRoute(builder: (_) => AddLocationScreen());
      case AppRoutes.addressinfo:
        return MaterialPageRoute(builder: (_) => AddressInfoScreen());
      case AppRoutes.pushnotification:
        return MaterialPageRoute(builder: (_) => PushNotificationScreen());
      case AppRoutes.bottomnav:
        return MaterialPageRoute(builder: (_) => BottomNavigation());  
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

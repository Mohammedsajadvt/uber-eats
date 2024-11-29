import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/routes/app_routes.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
             horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
            vertical: ResponsiveHelper.screenHeight(context) * 0.050
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImage.order),
              Text('')
            ],),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_images.dart';

import '../../../core/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navigateToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => navigateToHome(context));

    return  Scaffold(
      backgroundColor: AppColor.primaryGreen,
      body: Center(
        child: Image.asset(AppImage.logo)
      ),
    );
  }
}

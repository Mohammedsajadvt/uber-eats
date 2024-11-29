import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';

class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
              vertical: ResponsiveHelper.screenHeight(context) * 0.050),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImage.order),
              SizedBox(
                height: ResponsiveHelper.screenHeight(context) * 0.020,
              ),
              Text(
                'Always know the status of your order',
                style: TextStyle(fontSize: 30, color: AppColor.black),
              ),
              SizedBox(
                height: ResponsiveHelper.screenHeight(context) * 0.010,
              ),
              Text(
                  'Push notification are used to provide updates on your order. you can change this in settings at any time.'),

                SizedBox(
                height: ResponsiveHelper.screenHeight(context) * 0.030,
              ),
              CustomButton(title: 'Enable push notification ',color: AppColor.primaryGreen,textColor: AppColor.secondary,),
              Align(alignment: Alignment.center,child: TextButton(onPressed: (){}, child: Text('Skip for now',style: TextStyle(color: AppColor.black),)))    
            ],
          ),
        ),
      ),
    );
  }
}

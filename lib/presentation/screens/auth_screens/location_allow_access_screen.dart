import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_back_button.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';

class LocationAllowAccessScreen extends StatelessWidget {
  const LocationAllowAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
            vertical: ResponsiveHelper.screenHeight(context) * 0.030),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CustomBackButton()),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                Image.asset(AppImage.map),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                Text(
                  'Allow location access',
                  style: TextStyle(
                    fontSize: ResponsiveHelper.screenHeight(context) * 0.030,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.010,
                ),
                Text(
                    'This lets show you which restaurants and stores you can order from.'),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                GestureDetector(
                    onTap: () {},
                    child: CustomButton(
                        title: 'Allow',
                        color: AppColor.primaryGreen,
                        textColor: AppColor.secondary)),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.015,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.primaryGreen),
                        color: AppColor.secondary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: AppColor.primaryGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

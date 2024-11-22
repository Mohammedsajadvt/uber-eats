import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/continue_with.dart';
import 'package:ubereats/presentation/widgets/custom_back_button.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';
import 'package:ubereats/presentation/widgets/custom_title.dart';
import 'package:ubereats/presentation/widgets/mobile_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
            vertical: ResponsiveHelper.screenHeight(context) * 0.030),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/');
                },child: const CustomBackButton()),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(
                  title: 'Enter your mobile number',
                ),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                MobileInputWidget(),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/otp');
                  },
                  child: CustomButton(
                    title: 'Continue',
                    color: AppColor.primaryGreen,
                    textColor: AppColor.secondary,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: AppColor.mercury,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Or'),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: AppColor.mercury,
                    ))
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                ContinueWithButton(
                    title: 'Continue with apple', icon: AppImage.apple),
                     SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                 ContinueWithButton(
                    title: 'Continue with apple', icon: AppImage.google),
                   SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                 ContinueWithButton(
                    title: 'Continue with apple', icon: AppImage.email),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}

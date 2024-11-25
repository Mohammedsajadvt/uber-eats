import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_back_button.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';
import 'package:ubereats/presentation/widgets/custom_title.dart';
import 'package:ubereats/presentation/widgets/otp_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomBackButton()),
               SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(
                  title: 'Enter the 4 digit code sent to\nyou at +91 9876543210',
                ),  
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ), 
               OtpField(),
                  SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
              GestureDetector(onTap: (){
                Navigator.pushNamed(context,'/email');
              },child: CustomButton(title: 'Continue', color: AppColor.primaryGreen, textColor: AppColor.secondary)),
                  SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
              Row(
                children: [
                  GestureDetector(onTap: (){
                  },child: Container(decoration: BoxDecoration(color: AppColor.mercury,borderRadius: BorderRadius.circular(5)),child: Center(child: Text('Resend code via SMS'),),width:ResponsiveHelper.screenHeight(context) *0.200,height:ResponsiveHelper.screenHeight(context) *0.030,)),
                ],
              )   
            ],
          ),
        )),
      ),
    );
  }
}

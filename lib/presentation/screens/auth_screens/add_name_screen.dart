import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_back_button.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';
import 'package:ubereats/presentation/widgets/custom_text_input.dart';
import 'package:ubereats/presentation/widgets/custom_title.dart';

class AddNameScreen extends StatelessWidget {
  const AddNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: AppColor.secondary,
      body: Padding(
   padding: EdgeInsets.symmetric(
            horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
            vertical: ResponsiveHelper.screenHeight(context) * 0.030),      child: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                         GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomBackButton()),
                   SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                const CustomTitle(
                  title: 'What’s your email address?',
                ),  
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                CustomTextInput(hintText: "First name",),
             SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                CustomTextInput(hintText: "Last name",),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                GestureDetector(onTap: (){},child: CustomButton(title: "Continue", color: AppColor.primaryGreen, textColor: AppColor.secondary))
                      ],),
              ),
            ),
    ),);
  }
}
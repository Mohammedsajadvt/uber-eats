import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_back_button.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

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
                Image.asset(AppImage.notice),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                Text('Accept Uber’s terms & review privacy notice',
                    style: TextStyle(
                      fontSize: ResponsiveHelper.screenHeight(context) * 0.030,
                    )),
                SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.015,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                            'By selecting “i agree” below, i have reviewed and agree to the',
                        style: TextStyle(color: AppColor.black)),
                    TextSpan(
                        text: ' terms of use',
                        style: TextStyle(color: AppColor.blue)),
                    TextSpan(
                        text: ' and acknowledge the.',
                        style: TextStyle(color: AppColor.black)),
                    TextSpan(
                        text: ' privacy notice',
                        style: TextStyle(color: AppColor.blue)),
                    TextSpan(
                        text: ' i am at least 18 years of age.',
                        style: TextStyle(color: AppColor.black)),
                  ]),
                ),
                 SizedBox(
                  height: ResponsiveHelper.screenHeight(context) * 0.030,
                ),
                GestureDetector(onTap: (){},child: CustomButton(title: 'I agree', color: AppColor.primaryGreen, textColor: AppColor.secondary))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: ResponsiveHelper.screenHeight(context) * 0.015,left: ResponsiveHelper.screenWidth(context) * 0.030),
          child: Column(children: [
            GestureDetector(
              onTap: (){
              },
              child: Row(children: [
                CircleAvatar(radius: 25,backgroundColor: AppColor.mercury,child: Icon(Icons.arrow_back),)
              ],),
            ),
            SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.030,),
            Row(
              children: [
                Text('Enter your mobile number',style: TextStyle(fontSize:ResponsiveHelper.screenHeight(context) * 0.030),),
              ],
            ),
            SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.030,),

          ],),
        ),
      ),
    );
  }
}

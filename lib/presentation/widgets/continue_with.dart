
import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class ContinueWithButton extends StatelessWidget {
  final String title;
  final String icon;
  const ContinueWithButton({
    super.key, required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height:ResponsiveHelper.screenHeight(context) *0.064,width: double.infinity,decoration: BoxDecoration(color: AppColor.mercury,borderRadius: BorderRadius.circular(10)),child: Center(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(icon,height:ResponsiveHelper.screenHeight(context) * 0.030,),
      SizedBox(width:ResponsiveHelper.screenWidth(context) * 0.02,),
      Text(title,style: TextStyle(fontSize:ResponsiveHelper.screenHeight(context) * 0.017,fontWeight: FontWeight.bold),)
    ],)),);
  }
}

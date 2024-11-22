
import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(color: AppColor.black,fontSize:ResponsiveHelper.screenHeight(context) * 0.030),textAlign: TextAlign.justify,),

      ],
    );
  }
}
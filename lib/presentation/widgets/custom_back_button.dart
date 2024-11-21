
import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: const Row(children: [
        CircleAvatar(radius: 25,backgroundColor: AppColor.mercury,child: Icon(Icons.arrow_back),)
      ],),
    );
  }
}

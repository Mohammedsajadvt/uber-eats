
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  const CustomTextInput({
    super.key, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration:InputDecoration(
      hintText: hintText,
                  enabledBorder: OutlineInputBorder(                            borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColor.textFieldPrimry)),
                  disabledBorder: OutlineInputBorder(                            borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColor.textFieldPrimry)),
                  focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.textFieldPrimry, 
                  width: 2.0, 
                ),
              ),
                  fillColor:  AppColor.textFieldPrimry,
                  filled: true,
                  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
                  ),
                ),);
  }
}
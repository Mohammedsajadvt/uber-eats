import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class OtpField extends StatelessWidget {
  OtpField({super.key});

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
          height:ResponsiveHelper.screenHeight(context) *0.070,
          width: ResponsiveHelper.screenHeight(context) *0.070,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
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
              counterText: "", 
              fillColor:  AppColor.textFieldPrimry,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  _focusNodes[index + 1].requestFocus();
                } else {
                  FocusScope.of(context).unfocus();
                }
              } else if (value.isEmpty && index > 0) {
                _focusNodes[index - 1].requestFocus();
              }
            },
          ),
        );
      }),
    );
  }
}

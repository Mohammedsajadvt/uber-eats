
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  const CustomButton({
    super.key, required this.title, required this.color, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(title,style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 16),),),
      ),
    );
  }
}

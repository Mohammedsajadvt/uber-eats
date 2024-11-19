import 'package:flutter/material.dart';

class ResponsiveHelper{
  static screenWidth(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth;
  }

  static screenHeight(context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight;
  }
}
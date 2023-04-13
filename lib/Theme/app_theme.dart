import 'package:flutter/material.dart';
import 'package:webapp/Constants/color_constants.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      backgroundColor: ColorConstants.primaryColor,
        colorScheme:   ColorScheme(
      primary: ColorConstants.primaryColor,
      primaryContainer: ColorConstants.primaryColor,
      brightness: Brightness.light,
      secondary: ColorConstants.secondaryColor,
      onPrimary: ColorConstants.whiteColor,
      onSecondary: ColorConstants.whiteColor,
      onError: Colors.redAccent,
      error: Colors.redAccent,
      background: ColorConstants.whiteColor,
      onBackground: ColorConstants.whiteColor,
      surface: ColorConstants.whiteColor,
      onSurface: ColorConstants.whiteColor,
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/constants/constants.dart';

final lightTheme = ThemeData.light().copyWith(
  // primaryColor: AppColors.primaryColor,
  // errorColor: AppColors.errorColor,
  canvasColor: Colors.black,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
  ),
);

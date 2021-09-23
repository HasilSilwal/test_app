import 'package:flutter/material.dart';
import 'package:test_app/constants/constants.dart';

final darkTheme = ThemeData.dark().copyWith(
  // primaryColor: AppColors.primaryColor,
  // errorColor: AppColors.errorColor,
  scaffoldBackgroundColor: Colors.black,
  canvasColor: Colors.white,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    headline6: TextStyle(color: Colors.pink), //main headline color
    subtitle1: TextStyle(color: Colors.white), //texfield theme
  ),
);

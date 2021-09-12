import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_style.dart';

final ThemeData themeData = ThemeData.light().copyWith(
  primaryColor: kMainColor,
  shadowColor: kShadowColor,
  scaffoldBackgroundColor: kMainColor,
  buttonColor: kButtonColor,
  appBarTheme: AppBarTheme(
    backgroundColor: kMainColor,
    elevation: 5.0,
    centerTitle: true,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    // backgroundColor: kButtonColor,
    elevation: 2.0,
    selectedItemColor: kButtonColor,
    unselectedItemColor: kSubTextColor,
    selectedLabelStyle: kTextStyle1,
    unselectedLabelStyle: kTextStyle1,
  ),
);
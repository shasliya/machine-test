import 'package:flutter/material.dart';

class CustomTheme{
  static final LightThemeFont="Agu_Display.zip", DarkThemeFont="Agu_Display,Edu_AU_VIC_WA_NT_Pre.zip";
  //Light theme
static final lighttheme=ThemeData(
  primaryColor:lightThemeColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: white,
  useMaterial3: true
    fontFamily: LightThemeFont,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith<Color>((states)=>lightThemeColor)
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: white,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w500,
      color: black,
      fontSize: 23
    ),
    iconTheme: IconThemeData(color:lightThemeColor ),
    elevation: 0,
    actionsIconTheme: IconThemeData(color:lightThemeColor)
  )
)

}
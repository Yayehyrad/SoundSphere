import 'package:flutter/material.dart';
import 'package:soundsphere/core/configs/themes/app_color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.lightBG,
    brightness: Brightness.light,
    fontFamily: 'FiraSans',
    inputDecorationTheme: InputDecorationTheme(
        filled : true ,
        fillColor : Colors.transparent ,
          hintStyle: const TextStyle(
          color: Color.fromARGB(255, 61, 58, 58),
          fontWeight: FontWeight.w500
        ),
        contentPadding : EdgeInsets.all(30),
        enabledBorder : OutlineInputBorder(
          borderRadius : BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4
          )
        ) ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4
          )
        )
      ) ,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColor.primary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.darkBG,
    fontFamily: 'FiraSans',
    inputDecorationTheme: InputDecorationTheme(
        filled : true ,
        fillColor : Colors.transparent ,
        contentPadding : EdgeInsets.all(30),
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 184, 173, 173),
          fontWeight: FontWeight.w500
        ),
        enabledBorder : OutlineInputBorder(
          borderRadius : BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4
          )
        ) ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4
          )
        )
      ) ,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );

}
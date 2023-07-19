import 'package:flutter/material.dart';
import 'package:shop_app/core/styling/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryLightColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: secLightColor,
    ),
    useMaterial3: true,
    fontFamily: 'RobotoSlab',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((_) {
          return secLightColor;
        }),
        shape: MaterialStateProperty.resolveWith((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          );
        }),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey,
        selectedItemColor: primaryLightColor,
        elevation: 30.0),

  );
}

import 'package:e_commerce_seller/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_seller/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeCustom.lightTextTheme,
    chipTheme: ChipThemeCustom.lightChipTheme,
    appBarTheme: AppBarThemeCustom.lightAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.lightBottomSheetTheme,
    inputDecorationTheme: TextFieldThemeCustom.lightInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeCustom.lightOutlinedButtonTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextThemeCustom.dartTextTheme,
    chipTheme: ChipThemeCustom.dartChipTheme,
    appBarTheme: AppBarThemeCustom.dartAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.dartCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.dartBottomSheetTheme,
    inputDecorationTheme: TextFieldThemeCustom.dartInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.dartElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeCustom.dartOutlinedButtonTheme,
  );
}
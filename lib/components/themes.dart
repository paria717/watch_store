import 'package:flutter/material.dart';
import 'package:watch_store/constants/colors.dart';
import 'package:watch_store/constants/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return AppColors.focusedTextField;
          } else {
            return AppColors.unFocusedTextField;
          }
        }),
        contentPadding: EdgeInsets.all(AppDimens.medium),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimens.medium),
            borderSide: BorderSide(color: AppColors.borderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimens.medium),
            borderSide: BorderSide(color: AppColors.primaryColor))),
  );
}

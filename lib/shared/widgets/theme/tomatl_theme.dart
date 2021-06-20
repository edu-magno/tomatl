import 'package:flutter/material.dart';
import 'tomatl_colors.dart';

final ThemeData tomatlDefaultTheme = ThemeData(
    fontFamily: 'RedHatDisplay',
    backgroundColor: TomatlColors.primary.shade50,
    hintColor: TomatlColors.primary.shade800,
    appBarTheme: AppBarTheme(
      backgroundColor: TomatlColors.primary.shade900,
      iconTheme: IconThemeData(
        color: TomatlColors.primary.shade50,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: TomatlColors.primary.shade50,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
    scaffoldBackgroundColor: TomatlColors.primary.shade50,
    secondaryHeaderColor: TomatlColors.secondary,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: TomatlColors.secondary,
        minimumSize: Size(
          40,
          double.maxFinite,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: TomatlColors.secondary,
      minWidth: double.maxFinite,
    ));

final TextTheme tomatlDefaultTextTheme = TextTheme(
  bodyText1: TextStyle(color: TomatlColors.primary.shade800, fontSize: 14),
  bodyText2: TextStyle(
    color: TomatlColors.primary.shade50,
    fontSize: 14,
  ),
  headline4: TextStyle(
    fontFamily: 'ArchitectsDaughter',
    color: TomatlColors.primary.shade50,
    fontWeight: FontWeight.normal,
    fontSize: 48,
  ),
);

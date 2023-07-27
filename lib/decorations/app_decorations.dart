import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._();

  static const borderRadiusLarge = BorderRadius.all(Radius.circular(15));
  static const borderRadiusMedium = BorderRadius.all(Radius.circular(10));
  static const borderRadiusSmall = BorderRadius.all(Radius.circular(5));

  static const boxShadowHigh = [
    BoxShadow(
      color: Color.fromARGB(38, 0, 0, 0),
      blurRadius: 10,
    ),
  ];

  static const boxShadowLow = [
    BoxShadow(
      color: Color.fromARGB(38, 0, 0, 0),
      blurRadius: 4,
    ),
  ];
}

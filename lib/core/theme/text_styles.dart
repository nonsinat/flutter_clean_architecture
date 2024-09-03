import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const textTheme = TextTheme(
    displayLarge: heading,
    bodyLarge: body,
    // Define other text styles here
  );

  // Dark theme text styles
  static const TextStyle headingDark = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle bodyDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const textThemeDark = TextTheme(
    displayLarge: headingDark,
    bodyLarge: bodyDark,
    // Define other text styles here
  );
}

import 'package:flutter/material.dart';

class AppTheme{

  ThemeData getTheme(){
   const seedColor = Colors.purple;
    return ThemeData(
      colorSchemeSeed: seedColor
    );
  }
}
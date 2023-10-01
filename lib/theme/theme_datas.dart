import 'package:flutter/material.dart';

class ThemeDatas {
  ThemeDatas._();

  static ThemeData get generalAppTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
}

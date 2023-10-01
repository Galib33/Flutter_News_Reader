import 'package:flutter/material.dart';
import '../app_border_radiuses.dart';

class AppRoundBorders {
  AppRoundBorders._();

  static RoundedRectangleBorder get miniRadius5 =>
      RoundedRectangleBorder(borderRadius: AppBorderRadiuses.c5);
  static RoundedRectangleBorder get bottomRadius16 =>
      const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)));
}

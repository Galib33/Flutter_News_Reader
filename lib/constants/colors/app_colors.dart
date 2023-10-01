import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color blackColor = Color(0xff000002);
  static const Color whiteColor = Color(0xffffffff);
  static const Color lightGreyColor = Color(0xff8E8E8E);
  static const Color listBackgroundColor = Color.fromARGB(255, 217, 215, 215);
  static const Color darkBlueColor = Color(0xff062e70);
  static const Color redColor = Color(0xffff0000);
  static const Color blueColor = Color(0xff4d79ff);

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}

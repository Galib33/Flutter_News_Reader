import 'package:flutter/material.dart';

class Go {
  Go._();

  static back(BuildContext context) {
    Navigator.pop(context);
  }

  static push(BuildContext context, Widget page) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => page,
        ));
  }

  static pushReplace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => page,
        ));
  }
}

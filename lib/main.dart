import 'package:flutter/material.dart';

import 'app.dart';
import 'core/init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Init.firstInit();
  runApp(const MyApp());
}

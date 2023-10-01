import 'package:hive_flutter/hive_flutter.dart';
import '../single.dart';

class Init {
  Init._();

  static firstInit() async {
    await Hive.initFlutter();

    await Hive.openBox<String>("news");
    await Hive.openBox<bool>("status");
    setup();
  }
}

import 'package:flutter/material.dart';
import 'package:level_solo/app/injector.dart';

import 'app/app_widget.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  registerIntances();
  runApp(const AppWidget());
}

import 'package:flutter/material.dart';

import 'core/environment/env.dart';
import 'my_app.dart';

Future<void> main() async {
  Environment.init(AppEnvironment.dev);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

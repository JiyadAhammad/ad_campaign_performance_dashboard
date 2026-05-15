import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'core/environment/env.dart';
import 'my_app.dart';

Future<void> main() async {
  Environment.init(AppEnvironment.prod);
  WidgetsFlutterBinding.ensureInitialized();

  await setupInjector();

  runApp(const MainApp());
}

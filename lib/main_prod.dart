import 'package:flutter/material.dart';

import 'core/environment/env.dart';
import 'my_app.dart';

Future<void> main() async {
  Environment.init(AppEnvironment.prod);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

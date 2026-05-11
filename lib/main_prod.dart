import 'package:flutter/material.dart';

import 'core/environment/env.dart';

Future<void> main() async {
  Environment.init(AppEnvironment.dev);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Placeholder());
}

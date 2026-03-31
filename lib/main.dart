import 'package:bloc_concept/presentation_global/app/app.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init(); // initialize global DI
  runApp(const MyApp());
}

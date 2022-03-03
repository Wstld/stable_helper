import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stable_helper/app.dart';
import 'package:stable_helper/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DependencyInjection.init();
  runApp(const App());
}

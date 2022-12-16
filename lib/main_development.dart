import 'package:draggable/app/app.dart';
import 'package:draggable/bootstrap.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await bootstrap(App.new);
}

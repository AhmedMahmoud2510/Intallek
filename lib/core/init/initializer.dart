import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc.observer = MyObserver();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

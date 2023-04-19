import 'package:flutter/material.dart';

import 'features/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: const SplashView(),
    );
  }
}

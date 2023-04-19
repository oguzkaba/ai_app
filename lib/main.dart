import 'package:flutter/material.dart';

import 'package:ai_app/core/init/theme/theme.dart';
import 'package:ai_app/features/auth/login/login_view.dart';

import 'features/auth/register/register_view.dart';
import 'features/home/home_view.dart';
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
      theme: AppTheme.darkThemeData,
      routes: {
        '/': (context) => const SplashView(),
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/home': (context) => const HomeView(),
      },
      initialRoute: '/login',
    );
  }
}

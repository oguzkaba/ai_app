import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'core/init/routes/app_router.dart';
import 'core/init/theme/theme.dart';
import 'features/auth/login/login_view.dart';
import 'features/auth/register/register_view.dart';
import 'features/dashboard/view/dashboard_view.dart';
import 'features/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      theme: AppTheme.instance.darkThemeData,
      routerConfig: _appRouter.config(),
      // routes: {
      //   '/': (context) => const SplashView(),
      //   '/login': (context) => const LoginView(),
      //   '/register': (context) => const RegisterView(),
      //   '/home': (context) => const DashboardView(),
      // },
      // initialRoute: '/login',
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/init/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

import 'core/init/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeCubit>().state,
      routerConfig: appRouter.config(),
    );
  }
}

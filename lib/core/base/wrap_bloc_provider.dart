import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/chat/bloc/chat_bloc.dart';
import '../init/theme/cubit/theme_cubit.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;
  const AppBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatBloc>(
          create: (context) => ChatBloc(),
        ),
        // BlocProvider<AuthBloc>(
        //   create: (context) => AuthBloc(),
        // ),
        // BlocProvider<AccountBloc>(
        //   create: (context) => AccountBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => CategoriesBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => LoginCubit(),
        // ),
        // BlocProvider(
        //   create: (context) => ProductBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => CartBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => FavoriteBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => LanguageCubit(),
        // ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        // BlocProvider(
        //   create: (context) => InternetCubit(),
        // ),
      ],
      child: child,
    );
  }
}

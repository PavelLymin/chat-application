import 'package:client/common/blocs/chat_bloc/bloc/chat_bloc.dart';
import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:client/common/blocs/user_bloc/user_bloc.dart';
import 'package:client/common/cubits/auth_cubit/auth_cubit.dart';
import 'package:client/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:client/common/router/router.dart';
import 'package:client/common/theme/theme.dart';
import 'package:client/core/service_locator.dart';
import 'package:client/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.instance<LoginBloc>()),
        BlocProvider(create: (context) => GetIt.instance<ThemeCubit>()),
        BlocProvider(create: (context) => GetIt.instance<AuthCubit>()),
        BlocProvider(create: (context) => GetIt.instance<MessageBloc>()),
        BlocProvider(create: (context) => GetIt.instance<ChatBloc>()),
        BlocProvider(create: (context) => GetIt.instance<UserBloc>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: _router.config(),
            title: 'Chat Application',
            debugShowCheckedModeBanner: false,
            theme: state.isDarkMode ? createDarkTheme() : createLightTheme(),
          );
        },
      ),
    );
  }
}

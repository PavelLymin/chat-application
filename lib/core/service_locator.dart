import 'package:client/common/api/websocket.dart';
import 'package:client/common/blocs/chat_bloc/bloc/chat_bloc.dart';
import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:client/common/cubits/auth_cubit/auth_cubit.dart';
import 'package:client/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:client/data/repositories/auth_repository_impl.dart';
import 'package:client/data/repositories/chat_repository_impl.dart';
import 'package:client/data/repositories/message_repository_impl.dart';
import 'package:client/data/repositories/user_repository_impl.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/domain/repositories/chat_repository.dart';
import 'package:client/domain/repositories/message_repository.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

void setup() {
  _themeInit();
  _firebaseAuthInit();
  _userInit();
  _loginInit();
  _authInit();
  _chatInit();
  _websocketInit();
  _messageInit();
}

void _themeInit() {
  GetIt.I.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}

void _firebaseAuthInit() {
  GetIt.I.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}

void _userInit() {
  GetIt.I.registerLazySingleton<IUserRepository>(() => UserRepositoryImpl());
}

void _loginInit() {
  GetIt.I.registerLazySingleton<IAuthRepository>(
    () => AuthRepositoryImpl(firebaseAuth: GetIt.instance<FirebaseAuth>()),
  );

  GetIt.I.registerLazySingleton<LoginBloc>(
    () => LoginBloc(
      authRepository: GetIt.instance<IAuthRepository>(),
      userRepository: GetIt.instance<IUserRepository>(),
    ),
  );
}

void _authInit() {
  GetIt.I.registerLazySingleton<AuthCubit>(() => AuthCubit());
}

void _chatInit() {
  GetIt.I.registerLazySingleton<IChatRepository>(
    () => ChatRepositoryImpl(firebaseAuth: GetIt.instance<FirebaseAuth>()),
  );

  GetIt.I.registerLazySingleton<ChatBloc>(
    () => ChatBloc(chatRepository: GetIt.instance<IChatRepository>()),
  );
}

void _websocketInit() {
  GetIt.I.registerLazySingleton<WebsocketApi>(() => WebsocketApi());
}

void _messageInit() {
  GetIt.I.registerLazySingleton<IMessageRepository>(
    () => MessageRepositoryImpl(),
  );

  GetIt.I.registerLazySingleton<MessageBloc>(
    () => MessageBloc(
      messageRepository: GetIt.instance<IMessageRepository>(),
      websocketApi: GetIt.instance<WebsocketApi>(),
    ),
  );
}

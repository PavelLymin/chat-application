import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:client/data/repositories/auth_repository_impl.dart';
import 'package:client/data/repositories/user_repository_impl.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

void setup() {
  _firebaseAuthInit();
  _userInit();
  _authInit();
  _themeInit();
}

void _firebaseAuthInit() {
  GetIt.I.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}

void _userInit() {
  GetIt.I.registerLazySingleton<IUserRepository>(() => UserRepositoryImpl());
}

void _authInit() {
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

void _themeInit() {
  GetIt.I.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}

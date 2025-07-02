part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
<<<<<<< Updated upstream
  const factory LoginEvent.signIn({required AuthModel authModel}) = _SignIn;
  const factory LoginEvent.signUp({required AuthModel authModel}) = _SignUp;
=======
  const factory LoginEvent.signIn({required AuthEntity authModel}) = _SignIn;
  const factory LoginEvent.signUp({
    required AuthEntity authModel,
    required String userName,
  }) = _SignUp;
>>>>>>> Stashed changes
  const factory LoginEvent.signOut() = _SignOut;
}

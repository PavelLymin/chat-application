part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  @override
  final bool isAuthorized;
  AuthState({required this.isAuthorized});
}

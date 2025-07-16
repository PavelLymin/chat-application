part of 'user_bloc.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState.loading() = Loading;
  const factory UserState.loadedUser({required UserEntity user}) = LoadedUser;
  const factory UserState.loadedUsers({required List<UserEntity> users}) =
      LoadedUsers;
  const factory UserState.failure({required String message}) = Failure;
}

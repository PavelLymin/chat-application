part of 'user_bloc.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUser() = _FetchUser;
  const factory UserEvent.fetchUsers() = _FetchUsers;
  const factory UserEvent.searchUser({required String query}) = _SearchUser;
}

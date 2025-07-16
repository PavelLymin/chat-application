import 'package:client/core/exceptions.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/domain/entities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepository;
  final _users = <UserEntity>[];
  UserBloc({required IUserRepository userRepository})
    : _userRepository = userRepository,
      super(UserState.loading()) {
    on<UserEvent>((event, emit) async {
      switch (event) {
        case _FetchUser():
          await _fetchUser(emit);
        case _FetchUsers():
          await _fetchUsers(emit);
        case _SearchUser():
          _searchUser(emit, event);
      }
    });
  }

  Future<void> _fetchUser(Emitter<UserState> emit) async {
    try {
      final user = await _userRepository.fetchUser();
      emit(UserState.loadedUser(user: user));
    } on ApiException catch (e) {
      emit(UserState.failure(message: e.message));
    }
  }

  Future<void> _fetchUsers(Emitter<UserState> emit) async {
    try {
      _users.clear();
      final users = await _userRepository.fetchUsers();
      _users.addAll(users);
      emit(UserState.loadedUsers(users: _users));
    } on ApiException catch (e) {
      emit(UserState.failure(message: e.message));
    }
  }

  void _searchUser(Emitter<UserState> emit, _SearchUser event) {
    final query = event.query.toLowerCase();
    if (query.isEmpty) {
      emit(UserState.loadedUsers(users: _users));
    } else {
      final users = _users.where((user) {
        final emailLower = user.email.toLowerCase();
        return emailLower.contains(query);
      }).toList();
      emit(UserState.loadedUsers(users: users));
    }
  }
}

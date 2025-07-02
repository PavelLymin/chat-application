import 'package:client/domain/entities/user_entity/user_entity.dart';

abstract interface class IUserRepository {
  Future<void> addUser({required UserEntity userEntity});
}

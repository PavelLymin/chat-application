import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/user_dto/user_dto.dart';
import 'package:client/domain/entities/user_entity/user_entity.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl implements IUserRepository {
  final dio = Dio();
  @override
  Future<void> addUser({required UserEntity userEntity}) async {
    try {
      final userJson = UserDto.fromDomain(userEntity).toJson();
      await dio.post('http://localhost:3000/auth/addUser', data: userJson);
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(e.response!.data.toString());
      } else {
        throw ApiException(e.message.toString());
      }
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}

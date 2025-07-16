import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/user_dto/user_dto.dart';
import 'package:client/domain/entities/user_entity/user_entity.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepositoryImpl implements IUserRepository {
  final FirebaseAuth _firebaseAuth;
  UserRepositoryImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  final dio = Dio();
  final baseUrl = 'http://localhost:3000';
  @override
  Future<void> addUser({required UserEntity userEntity}) async {
    try {
      final userJson = UserDto.fromDomain(userEntity).toJson();
      await dio.post('$baseUrl/auth/addUser', data: userJson);
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

  @override
  Future<UserEntity> fetchUser() async {
    try {
      final id = _firebaseAuth.currentUser?.uid;
      final response = await dio.get(
        '$baseUrl/user',
        queryParameters: {'id': id},
      );

      final json = response.data as Map<String, dynamic>;
      return UserDto.fromJson(json).toDomain();
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

  @override
  Future<List<UserEntity>> fetchUsers() async {
    try {
      final response = await dio.get('$baseUrl/users');
      final List<dynamic> data = response.data;
      final json = data.cast<Map<String, dynamic>>();
      final users = json
          .map((json) => UserDto.fromJson(json).toDomain())
          .toList();

      return users;
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

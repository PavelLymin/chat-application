import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/chat_dto/chat_dto.dart';
import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:client/domain/repositories/chat_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatRepositoryImpl implements IChatRepository {
  final FirebaseAuth firebaseAuth;
  final dio = Dio();
  ChatRepositoryImpl({required this.firebaseAuth});

  @override
  Future<List<ChatEntity>> fetchChats() async {
    final currentUser = firebaseAuth.currentUser;
    if (currentUser == null) {
      throw AuthException('Пользователь не найден');
    }
    try {
      Response response = await dio.get(
        'http://localhost:3000/chat/lastMessages',
        queryParameters: {'id': currentUser.uid},
      );
      final List<dynamic> data = response.data;
      final mapData = data.cast<Map<String, dynamic>>();
      final chats = mapData
          .map((json) => ChatDto.fromJson(json).toDomain())
          .toList();
      return chats;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(e.response!.data);
      } else {
        throw ApiException(e.message.toString());
      }
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}

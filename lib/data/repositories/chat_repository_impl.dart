import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/chat_dto/chat_dto.dart';
import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:client/domain/repositories/chat_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatRepositoryImpl implements IChatRepository {
  final FirebaseAuth firebaseAuth;
  ChatRepositoryImpl({required this.firebaseAuth});

  final dio = Dio();
  final baseUrl = 'http://localhost:3000/chat';

  @override
  Future<List<ChatEntity>> fetchChats() async {
    final id = firebaseAuth.currentUser?.uid;
    try {
      Response response = await dio.get(
        '$baseUrl/lastMessages',
        queryParameters: {'id': id},
      );
      final List<dynamic> data = response.data;
      final json = data.cast<Map<String, dynamic>>();
      final chats = json
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

  @override
  Future<void> createChat({required String participantId}) async {
    final id = firebaseAuth.currentUser?.uid;
    try {
      await dio.post(
        '$baseUrl/createChat',
        data: {'participant_one_id': id, 'participant_two_id': participantId},
      );
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

import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/message_dto/message_dto.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:client/domain/repositories/message_repository.dart';
import 'package:dio/dio.dart';

class MessageRepositoryImpl implements IMessageRepository {
  MessageRepositoryImpl();
  final dio = Dio();
  @override
  Future<List<MessageEntity>> fetchMessages({required String chatId}) async {
    try {
      Response response = await dio.get(
        'http://localhost:3000/chat/allMessages',
        queryParameters: {'id': chatId},
      );
      final List<dynamic> data = response.data;
      final mapData = data.cast<Map<String, dynamic>>();
      final chats = mapData
          .map((json) => MessageDto.fromJson(json).toDomain())
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
  Future<void> sendMessage({required MessageEntity message}) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }
}

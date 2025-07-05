import 'package:client/domain/entities/chat_entity/chat_entity.dart';

abstract interface class IChatRepository {
  Future<List<ChatEntity>> fetchChats();
}

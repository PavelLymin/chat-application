abstract interface class IMessageRepository {
  void fetchMessages();
  // void sendMessage({required MessageEntity messageEntity});
  Future<void> closeConnect();
}

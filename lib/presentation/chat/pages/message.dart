import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/presentation/chat/widgets/message_input.dart';
import 'package:client/presentation/chat/widgets/receive_message.dart';
import 'package:client/presentation/chat/widgets/sent_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Message extends StatefulWidget {
  const Message({super.key, required this.chatId});
  final String chatId;

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  String senderId = FirebaseAuth.instance.currentUser!.uid;
  final _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MessageBloc>().add(
      MessageEvent.loadMessages(chatId: widget.chatId),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.router.replace(const Chat());
          },
        ),
        title: const Row(
          children: [CircleAvatar(), SizedBox(width: 10), Text('Вадим')],
        ),
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    return Container();
                  case Loading():
                    return Center(child: CircularProgressIndicator());
                  case Loaded():
                    return ListView.builder(
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) {
                        final message = state.messages[index];
                        if (message.senderId == senderId) {
                          return SentMessage(message: message.content);
                        } else {
                          return ReceiveMessage(message: message.content);
                        }
                      },
                    );
                  case Failure():
                    return Center(child: Text(state.message));
                }
              },
            ),
          ),
          MessageInput(
            controller: _messageController,
            chatId: widget.chatId,
            senderId: senderId,
          ),
        ],
      ),
    );
  }
}

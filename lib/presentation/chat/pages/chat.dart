import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/chat_bloc/bloc/chat_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/common/theme/theme.dart';
import 'package:client/presentation/chat/widgets/recent_contact.dart';
import 'package:client/presentation/chat/widgets/user_message_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  void initState() {
    super.initState();
    context.read<ChatBloc>().add(ChatEvent.fetchChats());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.router.replace(SearchUsers());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Text('Недавние'),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [const RecentContact(name: 'Vadim')],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  switch (state) {
                    case Loading():
                      return const Center(child: CircularProgressIndicator());
                    case Loaded():
                      return ListView.builder(
                        itemCount: state.chats.length,
                        itemBuilder: (context, index) {
                          return UserMessageTile(
                            chatEntity: state.chats[index],
                          );
                        },
                      );
                    case Failure():
                      return Center(child: Text(state.message));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

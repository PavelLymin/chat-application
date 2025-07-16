import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/chat_bloc/bloc/chat_bloc.dart'
    hide Failure, Loading;
import 'package:client/common/blocs/user_bloc/user_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/common/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchUsers extends StatefulWidget {
  const SearchUsers({super.key});

  @override
  State<SearchUsers> createState() => _SearchUsersState();
}

class _SearchUsersState extends State<SearchUsers> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserEvent.fetchUsers());
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: BasicTextField(
          controller: _searchController,
          onChanged: (text) {
            context.read<UserBloc>().add(UserEvent.searchUser(query: text));
          },
          hintText: 'Search',
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: GestureDetector(
                  onTap: () {
                    context.router.replace(Chat());
                  },
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          switch (state) {
            case Loading():
              return const Center(child: CircularProgressIndicator());
            case LoadedUser():
              return Container();
            case LoadedUsers():
              return ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return ListTile(
                    title: Text(user.email),
                    subtitle: GestureDetector(
                      onTap: () {
                        context.read<ChatBloc>().add(
                          ChatEvent.createChat(participantId: user.id!),
                        );
                      },
                      child: Text('Add contact'),
                    ),
                  );
                },
              );
            case Failure():
              return Center(child: Text(state.message));
          }
        },
      ),
    );
  }
}

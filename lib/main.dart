import 'package:client/common/api/websocket.dart';
import 'package:client/common/blocs/login_bloc/login_bloc.dart';
import 'package:client/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:client/common/router/router.dart';
import 'package:client/core/service_locator.dart';
import 'package:client/data/repositories/message_repository_impl.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:client/domain/repositories/message_repository.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.instance<LoginBloc>()),
        BlocProvider(create: (context) => GetIt.instance<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(home: const MultiUserChatApp());
        },
      ),
    );
  }
}

class MultiUserChatApp extends StatefulWidget {
  const MultiUserChatApp({super.key});

  @override
  State<MultiUserChatApp> createState() => _MultiUserChatAppState();
}

class _MultiUserChatAppState extends State<MultiUserChatApp> {
  late IMessageRepository repository;
  List<String> _messages = [];
  String _currentColor = 'blue';

  @override
  void initState() {
    super.initState();
    final api = WebsocketApi();
    repository = MessageRepositoryImpl(websocketApi: api);
    repository.fetchMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multi-User Chat App')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      _messages[index],
                      style: TextStyle(
                        color: _currentColor == 'blue'
                            ? Colors.blue
                            : Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
            TextFormField(
              onChanged: (message) {
                setState(() {
                  _messages.add(message);
                });
                repository.sendMessage(
                  message: MessageEntity(message: message),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:client/presentation/auth/pages/signin.dart' as _i3;
import 'package:client/presentation/auth/pages/signup.dart' as _i4;
import 'package:client/presentation/chat/pages/chat.dart' as _i1;
import 'package:client/presentation/chat/pages/message.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.Chat]
class Chat extends _i5.PageRouteInfo<void> {
  const Chat({List<_i5.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.Chat();
    },
  );
}

/// generated route for
/// [_i2.Message]
class Message extends _i5.PageRouteInfo<MessageArgs> {
  Message({
    _i6.Key? key,
    required String chatId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         Message.name,
         args: MessageArgs(key: key, chatId: chatId),
         initialChildren: children,
       );

  static const String name = 'Message';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MessageArgs>();
      return _i2.Message(key: args.key, chatId: args.chatId);
    },
  );
}

class MessageArgs {
  const MessageArgs({this.key, required this.chatId});

  final _i6.Key? key;

  final String chatId;

  @override
  String toString() {
    return 'MessageArgs{key: $key, chatId: $chatId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MessageArgs) return false;
    return key == other.key && chatId == other.chatId;
  }

  @override
  int get hashCode => key.hashCode ^ chatId.hashCode;
}

/// generated route for
/// [_i3.Signin]
class Signin extends _i5.PageRouteInfo<void> {
  const Signin({List<_i5.PageRouteInfo>? children})
    : super(Signin.name, initialChildren: children);

  static const String name = 'Signin';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.Signin();
    },
  );
}

/// generated route for
/// [_i4.Signup]
class Signup extends _i5.PageRouteInfo<void> {
  const Signup({List<_i5.PageRouteInfo>? children})
    : super(Signup.name, initialChildren: children);

  static const String name = 'Signup';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.Signup();
    },
  );
}

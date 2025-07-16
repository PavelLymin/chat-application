// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:client/common/widgets/bottom_navigation_bar.dart' as _i4;
import 'package:client/presentation/auth/pages/signin.dart' as _i6;
import 'package:client/presentation/auth/pages/signup.dart' as _i7;
import 'package:client/presentation/chat/pages/chat.dart' as _i1;
import 'package:client/presentation/chat/pages/message.dart' as _i2;
import 'package:client/presentation/chat/pages/search_users.dart' as _i5;
import 'package:client/presentation/profile/pages/profile.dart' as _i3;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.Chat]
class Chat extends _i8.PageRouteInfo<void> {
  const Chat({List<_i8.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.Chat();
    },
  );
}

/// generated route for
/// [_i2.Message]
class Message extends _i8.PageRouteInfo<MessageArgs> {
  Message({
    _i9.Key? key,
    required String chatId,
    required String username,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         Message.name,
         args: MessageArgs(key: key, chatId: chatId, username: username),
         initialChildren: children,
       );

  static const String name = 'Message';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MessageArgs>();
      return _i2.Message(
        key: args.key,
        chatId: args.chatId,
        username: args.username,
      );
    },
  );
}

class MessageArgs {
  const MessageArgs({this.key, required this.chatId, required this.username});

  final _i9.Key? key;

  final String chatId;

  final String username;

  @override
  String toString() {
    return 'MessageArgs{key: $key, chatId: $chatId, username: $username}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MessageArgs) return false;
    return key == other.key &&
        chatId == other.chatId &&
        username == other.username;
  }

  @override
  int get hashCode => key.hashCode ^ chatId.hashCode ^ username.hashCode;
}

/// generated route for
/// [_i3.Profile]
class Profile extends _i8.PageRouteInfo<void> {
  const Profile({List<_i8.PageRouteInfo>? children})
    : super(Profile.name, initialChildren: children);

  static const String name = 'Profile';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.Profile();
    },
  );
}

/// generated route for
/// [_i4.RootScreen]
class RootRoute extends _i8.PageRouteInfo<void> {
  const RootRoute({List<_i8.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.RootScreen();
    },
  );
}

/// generated route for
/// [_i5.SearchUsers]
class SearchUsers extends _i8.PageRouteInfo<void> {
  const SearchUsers({List<_i8.PageRouteInfo>? children})
    : super(SearchUsers.name, initialChildren: children);

  static const String name = 'SearchUsers';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchUsers();
    },
  );
}

/// generated route for
/// [_i6.Signin]
class Signin extends _i8.PageRouteInfo<void> {
  const Signin({List<_i8.PageRouteInfo>? children})
    : super(Signin.name, initialChildren: children);

  static const String name = 'Signin';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.Signin();
    },
  );
}

/// generated route for
/// [_i7.Signup]
class Signup extends _i8.PageRouteInfo<void> {
  const Signup({List<_i8.PageRouteInfo>? children})
    : super(Signup.name, initialChildren: children);

  static const String name = 'Signup';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.Signup();
    },
  );
}

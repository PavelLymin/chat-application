// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:client/presentation/auth/pages/signin.dart' as _i2;
import 'package:client/presentation/auth/pages/signup.dart' as _i3;
import 'package:client/presentation/home/home.dart' as _i1;

/// generated route for
/// [_i1.Home]
class Home extends _i4.PageRouteInfo<void> {
  const Home({List<_i4.PageRouteInfo>? children})
    : super(Home.name, initialChildren: children);

  static const String name = 'Home';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.Home();
    },
  );
}

/// generated route for
/// [_i2.Signin]
class Signin extends _i4.PageRouteInfo<void> {
  const Signin({List<_i4.PageRouteInfo>? children})
    : super(Signin.name, initialChildren: children);

  static const String name = 'Signin';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.Signin();
    },
  );
}

/// generated route for
/// [_i3.Signup]
class Signup extends _i4.PageRouteInfo<void> {
  const Signup({List<_i4.PageRouteInfo>? children})
    : super(Signup.name, initialChildren: children);

  static const String name = 'Signup';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.Signup();
    },
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:client/common/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: Signup.page),
    AutoRoute(page: Signin.page),
    AutoRoute(initial: true, page: Chat.page),
    AutoRoute(page: Message.page),
  ];
}

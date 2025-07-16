import 'package:auto_route/auto_route.dart';
import 'package:client/common/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: Signup.page),
    AutoRoute(page: Signin.page),
    AutoRoute(page: Message.page),
    AutoRoute(page: SearchUsers.page),
    AutoRoute(
      page: RootRoute.page,
      children: [
        AutoRoute(page: Chat.page),
        AutoRoute(page: Profile.page),
      ],
    ),
  ];
}

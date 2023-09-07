import 'package:auto_route/auto_route.dart';

import 'routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: HomeWrapper.page,
          path: '/',
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
              path: 'home',
            ),
            AutoRoute(
              page: AccountRoute.page,
              path: 'account',
            ),
          ],
        ),
      ];
}

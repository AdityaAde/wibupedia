import 'package:auto_route/auto_route.dart';

import 'routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: AuthenticationWrapper.page,
          path: '/',
          children: [
            AutoRoute(
              page: SignupRoute.page,
              path: 'signup',
            ),
            AutoRoute(
              page: LoginRoute.page,
              path: 'login',
            ),
            AutoRoute(
              page: LoginEmailRoute.page,
              path: 'login-email',
            ),
          ],
        ),
        AutoRoute(
          page: BaseRoute.page,
          path: '/base',
        ),
      ];
}

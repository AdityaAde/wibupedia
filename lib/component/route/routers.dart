import 'package:auto_route/auto_route.dart';

import 'guards/guards.dart';
import 'routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/onboarding',
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
            AutoRoute(
              initial: true,
              page: BaseRoute.page,
              path: 'base',
              children: [
                AutoRoute(
                  guards: [AuthGuard()],
                  page: HomeRoute.page,
                  path: 'home',
                ),
                AutoRoute(
                  page: SearchRoute.page,
                  path: 'search',
                ),
                AutoRoute(
                  page: MyListRoute.page,
                  path: 'my-list',
                ),
                AutoRoute(
                  page: ProfileRoute.page,
                  path: 'profile',
                ),
              ],
            ),
            AutoRoute(
              page: DetailAnimeRoute.page,
              path: 'detail-anime',
            ),
          ],
        ),
      ];
}

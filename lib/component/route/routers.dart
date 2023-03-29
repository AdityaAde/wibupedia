import 'package:auto_route/auto_route.dart';

import '../../pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    HomePage.route,
  ],
)
class $AppRouter {}

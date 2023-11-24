import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../routers.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      resolver.next(true);
    } else {
      router.push(const OnboardingRoute());
    }
  }
}

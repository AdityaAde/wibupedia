import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundOnboardingWidget(),
          GetstartedWidget(),
        ],
      ),
    );
  }
}

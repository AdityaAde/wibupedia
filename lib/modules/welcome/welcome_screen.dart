import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../component/route/routers.gr.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pushRoute(const HomeRoute()),
          child: const Text('Go To Nested Route'),
        ),
      ),
    );
  }
}

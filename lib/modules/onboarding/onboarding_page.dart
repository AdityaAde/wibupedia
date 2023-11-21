import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../component/theme/theme.dart';
import '../../gen/assets.gen.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.onboarding.image(),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, AppColor.ink01],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome to Wibupedia',
                    style: AppStyle.materialTextStyle.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'The best streaming anime app of the century to entertain you every day',
                    style: AppStyle.materialTextStyle.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get Started'),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

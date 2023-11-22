import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';

class BackgroundOnboardingWidget extends StatelessWidget {
  const BackgroundOnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
      ],
    );
  }
}

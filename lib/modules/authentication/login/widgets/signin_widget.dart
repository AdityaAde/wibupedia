import 'package:flutter/material.dart';

import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        ButtonWidget.outline(
          'Continue with Facebook',
          icon: Assets.icons.facebookIcon.image(),
        ),
        const SizedBox(height: 16),
        ButtonWidget.outline(
          'Continue with Google',
          icon: Assets.icons.googleIcon.image(),
        ),
        const SizedBox(height: 16),
        ButtonWidget.outline(
          'Continue with Twitter',
          icon: Assets.icons.twitterIcon.image(height: 30),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Divider(
                  color: AppColor.dark3,
                  thickness: 1.3,
                ),
              ),
              SizedBox(width: 16),
              Text('or'),
              SizedBox(width: 16),
              Expanded(
                child: Divider(
                  color: AppColor.dark3,
                  thickness: 1.3,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sign in with email'),
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}

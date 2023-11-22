import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.popRoute(),
          icon: Icon(
            Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Assets.images.letsIn.image(),
            const SizedBox(height: 30),
            Text('Let\'s you in',
                style: AppStyle.materialTextStyle.headlineLarge),
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
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: AppStyle.materialTextStyle.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w300),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign up',
                    style: AppStyle.materialTextStyle.bodyMedium?.copyWith(
                      color: AppColor.primary500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

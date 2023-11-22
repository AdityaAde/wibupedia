import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wibupedia/gen/assets.gen.dart';

import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class LoginEmailPage extends StatelessWidget {
  const LoginEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Assets.images.logo.image(),
            ),
            Text(
              'Login to Your Account',
              style: AppStyle.materialTextStyle.headlineLarge,
            ),
            const SizedBox(height: 32),
            TextfieldElipticalWidget(
              hint: 'Email',
              prefixIcon: Assets.icons.emailIcon.image(),
            ),
            const SizedBox(height: 20),
            TextfieldElipticalWidget(
              hint: 'Password',
              prefixIcon: Assets.icons.lockIcon.image(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off,
                  color: AppColor.ink03,
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(onPressed: () {}, child: const Text('Sign in')),
            const SizedBox(height: 24),
            Text(
              'Forgot Password?',
              style: AppStyle.materialTextStyle.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColor.primary500),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Divider(
                      color: AppColor.dark3,
                      thickness: 1.3,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text('or continue with',
                      style: AppStyle.materialTextStyle.bodyLarge?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Divider(
                      color: AppColor.dark3,
                      thickness: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 60,
              child: Row(
                children: [
                  SosmedButtonWidget(
                    sosmedIcon: Assets.icons.facebookIcon.image(),
                  ),
                  const SizedBox(width: 18),
                  SosmedButtonWidget(
                    sosmedIcon: Assets.icons.googleIcon.image(),
                  ),
                  const SizedBox(width: 18),
                  SosmedButtonWidget(
                    sosmedIcon: Assets.icons.twitterIcon.image(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text: 'Alread have an account? ',
                style: AppStyle.materialTextStyle.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w300),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign in',
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

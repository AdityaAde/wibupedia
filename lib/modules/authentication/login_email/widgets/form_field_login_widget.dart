import 'package:flutter/material.dart';

import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';

class FormFieldLoginWidget extends StatelessWidget {
  const FormFieldLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}

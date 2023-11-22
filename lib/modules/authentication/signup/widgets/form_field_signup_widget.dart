import 'package:flutter/material.dart';

import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';

class FormFieldSignupWidget extends StatelessWidget {
  const FormFieldSignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create to Your Account',
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
        ElevatedButton(onPressed: () {}, child: const Text('Sign up')),
        const SizedBox(height: 32),
      ],
    );
  }
}

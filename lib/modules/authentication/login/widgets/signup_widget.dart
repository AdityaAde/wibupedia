import 'package:flutter/material.dart';

import '../../../../component/theme/theme.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}

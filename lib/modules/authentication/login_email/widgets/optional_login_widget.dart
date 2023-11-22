import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../component/route/routers.gr.dart';
import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';

class OptionalLoginWidget extends StatelessWidget {
  const OptionalLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  style: AppStyle.materialTextStyle.bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
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
              SosmedButtonWidget(sosmedIcon: Assets.icons.facebookIcon.image()),
              const SizedBox(width: 18),
              SosmedButtonWidget(sosmedIcon: Assets.icons.googleIcon.image()),
              const SizedBox(width: 18),
              SosmedButtonWidget(sosmedIcon: Assets.icons.twitterIcon.image()),
            ],
          ),
        ),
        const SizedBox(height: 32),
        RichtextWidget(
          textOne: 'Don\'t have an account? ',
          textTwo: 'Sign up',
          onTap: () => context.pushRoute(const SignupRoute()),
        ),
      ],
    );
  }
}

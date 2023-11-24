import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibupedia/modules/modules.dart';

import '../../../../component/route/routers.gr.dart';
import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthenticationCubit>();
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
          onTap: () => authCubit.googleAuth(),
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
            children: [
              const Expanded(
                child: Divider(
                  color: AppColor.dark3,
                  thickness: 1.3,
                ),
              ),
              const SizedBox(width: 16),
              Text('or',
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
        const SizedBox(height: 18),
        ElevatedButton(
          child: const Text('Sign in with email'),
          onPressed: () => context.pushRoute(const LoginEmailRoute()),
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}

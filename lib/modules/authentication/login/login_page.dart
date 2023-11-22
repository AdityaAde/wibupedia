import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';
import '../../../widgets/widgets.dart';
import 'widgets/widgets.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.letsIn.image(),
              const SizedBox(height: 30),
              Text('Let\'s you in',
                  style: AppStyle.materialTextStyle.headlineLarge),
              const SigninWidget(),
              RichtextWidget(
                textOne: 'Don\'t have an account? ',
                textTwo: 'Sign up',
                onTap: () => context.pushRoute(const SignupRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

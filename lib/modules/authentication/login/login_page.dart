import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';
import 'widgets/widgets.dart';

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
            const SigninWidget(),
            const SignupWidget(),
          ],
        ),
      ),
    );
  }
}

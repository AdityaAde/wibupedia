import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wibupedia/gen/assets.gen.dart';

import '../../widgets/widgets.dart';
import '../authentication/authentication.dart';
import 'widgets/widgets.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Assets.images.logo.image(height: 30),
            const SizedBox(width: 18),
            const Text('Profile'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ProfileWidget(),
            ButtonWidget.button(
              'Logout',
              onTap: () => context.read<AuthenticationCubit>().logout(),
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

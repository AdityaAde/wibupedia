import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules.dart';
export 'base_page.dart';

@RoutePage()
class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: const Text(
            'Logout',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => context.read<AuthenticationCubit>().logout(),
        ),
      ),
    );
  }
}

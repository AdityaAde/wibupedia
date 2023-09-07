import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final testCubit = context.read<TestCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Account ${testCubit.name}')),
    );
  }
}

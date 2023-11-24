import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/modules.dart';
import '../../injector.dart';

@RoutePage()
class AuthenticationWrapper extends StatelessWidget
    implements AutoRouteWrapper {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthenticationCubit>(),
      child: this,
    );
  }
}

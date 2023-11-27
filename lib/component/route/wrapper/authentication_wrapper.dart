import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/modules.dart';
import '../../../widgets/widgets.dart';
import '../../injector.dart';
import '../routers.gr.dart';

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
      child: BlocListener<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loading: () => LoadingWidget.show(context),
            signup: (user) {
              context.replaceRoute(const LoginEmailRoute());
              ToastWidget.showToast('Success Create Account');
            },
            auth: (user) {
              context.popRoute();
              context.replaceRoute(const BaseRoute());
              ToastWidget.showToast('Welcome and Enjoy streaming Wibu!');
            },
            logout: () => context.replaceRoute(const LoginRoute()),
            error: (err) => ToastWidget.showToast(err),
          );
        },
        child: this,
      ),
    );
  }
}

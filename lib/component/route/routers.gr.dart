// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:wibupedia/component/route/wrapper/authentication_wrapper.dart'
    as _i1;
import 'package:wibupedia/component/route/wrapper/home_wrapper.dart' as _i2;
import 'package:wibupedia/modules/account/account_page.dart' as _i3;
import 'package:wibupedia/modules/authentication/login/login_page.dart' as _i4;
import 'package:wibupedia/modules/authentication/login_email/login_email_page.dart'
    as _i5;
import 'package:wibupedia/modules/authentication/signup/signup_page.dart'
    as _i6;
import 'package:wibupedia/modules/base/base_page.dart' as _i7;
import 'package:wibupedia/modules/home/home_page.dart' as _i8;
import 'package:wibupedia/modules/onboarding/onboarding_page.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthenticationWrapper.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i1.AuthenticationWrapper()),
      );
    },
    HomeWrapper.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i2.HomeWrapper()),
      );
    },
    AccountRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AccountPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    LoginEmailRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginEmailPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignupPage(),
      );
    },
    BaseRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.BasePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationWrapper]
class AuthenticationWrapper extends _i10.PageRouteInfo<void> {
  const AuthenticationWrapper({List<_i10.PageRouteInfo>? children})
      : super(
          AuthenticationWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticationWrapper';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeWrapper]
class HomeWrapper extends _i10.PageRouteInfo<void> {
  const HomeWrapper({List<_i10.PageRouteInfo>? children})
      : super(
          HomeWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapper';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AccountPage]
class AccountRoute extends _i10.PageRouteInfo<void> {
  const AccountRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginEmailPage]
class LoginEmailRoute extends _i10.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignupPage]
class SignupRoute extends _i10.PageRouteInfo<void> {
  const SignupRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.BasePage]
class BaseRoute extends _i10.PageRouteInfo<void> {
  const BaseRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingPage]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

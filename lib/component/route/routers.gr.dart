// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:wibupedia/component/route/wrapper/authentication_wrapper.dart'
    as _i1;
import 'package:wibupedia/component/route/wrapper/home_wrapper.dart' as _i2;
import 'package:wibupedia/modules/authentication/login/login_page.dart' as _i3;
import 'package:wibupedia/modules/authentication/login_email/login_email_page.dart'
    as _i4;
import 'package:wibupedia/modules/authentication/signup/signup_page.dart'
    as _i5;
import 'package:wibupedia/modules/base/base_page.dart' as _i6;
import 'package:wibupedia/modules/detail_anime/detail_anime_page.dart' as _i7;
import 'package:wibupedia/modules/detail_list_anime/detail_list_anime_page.dart'
    as _i8;
import 'package:wibupedia/modules/home/home_page.dart' as _i9;
import 'package:wibupedia/modules/modules.dart' as _i17;
import 'package:wibupedia/modules/my_list/my_list_page.dart' as _i10;
import 'package:wibupedia/modules/onboarding/onboarding_page.dart' as _i11;
import 'package:wibupedia/modules/profile/profile_page.dart' as _i12;
import 'package:wibupedia/modules/search/search_filter/search_filter_page.dart'
    as _i13;
import 'package:wibupedia/modules/search/search_page.dart' as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AuthenticationWrapper.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.WrappedRoute(child: const _i1.AuthenticationWrapper()),
      );
    },
    HomeWrapper.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.WrappedRoute(child: const _i2.HomeWrapper()),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    LoginEmailRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginEmailPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignupPage(),
      );
    },
    BaseRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BasePage(),
      );
    },
    DetailAnimeRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<DetailAnimeRouteArgs>(
          orElse: () => DetailAnimeRouteArgs(
                titleAnime: queryParams.optString('title-anime'),
                animeUrl: queryParams.optString('anime-url'),
              ));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DetailAnimePage(
          key: args.key,
          titleAnime: args.titleAnime,
          animeUrl: args.animeUrl,
        ),
      );
    },
    DetailListAnimeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<DetailListAnimeRouteArgs>(
          orElse: () => DetailListAnimeRouteArgs(
                title: pathParams.getString('title'),
                isOngoingAnime: queryParams.optBool('isOngoingAnime'),
                ongoingCubit: queryParams.get('ongoingCubit'),
                completedCubit: queryParams.get('completedCubit'),
              ));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.DetailListAnimePage(
          key: args.key,
          title: args.title,
          isOngoingAnime: args.isOngoingAnime,
          ongoingCubit: args.ongoingCubit,
          completedCubit: args.completedCubit,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomePage(),
      );
    },
    MyListRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyListPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnboardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    SearchFilterRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SearchFilterPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationWrapper]
class AuthenticationWrapper extends _i15.PageRouteInfo<void> {
  const AuthenticationWrapper({List<_i15.PageRouteInfo>? children})
      : super(
          AuthenticationWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticationWrapper';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeWrapper]
class HomeWrapper extends _i15.PageRouteInfo<void> {
  const HomeWrapper({List<_i15.PageRouteInfo>? children})
      : super(
          HomeWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapper';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginEmailPage]
class LoginEmailRoute extends _i15.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i15.PageRouteInfo<void> {
  const SignupRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BasePage]
class BaseRoute extends _i15.PageRouteInfo<void> {
  const BaseRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DetailAnimePage]
class DetailAnimeRoute extends _i15.PageRouteInfo<DetailAnimeRouteArgs> {
  DetailAnimeRoute({
    _i16.Key? key,
    String? titleAnime,
    String? animeUrl,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DetailAnimeRoute.name,
          args: DetailAnimeRouteArgs(
            key: key,
            titleAnime: titleAnime,
            animeUrl: animeUrl,
          ),
          rawQueryParams: {
            'title-anime': titleAnime,
            'anime-url': animeUrl,
          },
          initialChildren: children,
        );

  static const String name = 'DetailAnimeRoute';

  static const _i15.PageInfo<DetailAnimeRouteArgs> page =
      _i15.PageInfo<DetailAnimeRouteArgs>(name);
}

class DetailAnimeRouteArgs {
  const DetailAnimeRouteArgs({
    this.key,
    this.titleAnime,
    this.animeUrl,
  });

  final _i16.Key? key;

  final String? titleAnime;

  final String? animeUrl;

  @override
  String toString() {
    return 'DetailAnimeRouteArgs{key: $key, titleAnime: $titleAnime, animeUrl: $animeUrl}';
  }
}

/// generated route for
/// [_i8.DetailListAnimePage]
class DetailListAnimeRoute
    extends _i15.PageRouteInfo<DetailListAnimeRouteArgs> {
  DetailListAnimeRoute({
    _i16.Key? key,
    required String title,
    bool? isOngoingAnime,
    _i17.OngoingCubit? ongoingCubit,
    _i17.CompletedCubit? completedCubit,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DetailListAnimeRoute.name,
          args: DetailListAnimeRouteArgs(
            key: key,
            title: title,
            isOngoingAnime: isOngoingAnime,
            ongoingCubit: ongoingCubit,
            completedCubit: completedCubit,
          ),
          rawPathParams: {'title': title},
          rawQueryParams: {
            'isOngoingAnime': isOngoingAnime,
            'ongoingCubit': ongoingCubit,
            'completedCubit': completedCubit,
          },
          initialChildren: children,
        );

  static const String name = 'DetailListAnimeRoute';

  static const _i15.PageInfo<DetailListAnimeRouteArgs> page =
      _i15.PageInfo<DetailListAnimeRouteArgs>(name);
}

class DetailListAnimeRouteArgs {
  const DetailListAnimeRouteArgs({
    this.key,
    required this.title,
    this.isOngoingAnime,
    this.ongoingCubit,
    this.completedCubit,
  });

  final _i16.Key? key;

  final String title;

  final bool? isOngoingAnime;

  final _i17.OngoingCubit? ongoingCubit;

  final _i17.CompletedCubit? completedCubit;

  @override
  String toString() {
    return 'DetailListAnimeRouteArgs{key: $key, title: $title, isOngoingAnime: $isOngoingAnime, ongoingCubit: $ongoingCubit, completedCubit: $completedCubit}';
  }
}

/// generated route for
/// [_i9.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyListPage]
class MyListRoute extends _i15.PageRouteInfo<void> {
  const MyListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyListRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnboardingPage]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SearchFilterPage]
class SearchFilterRoute extends _i15.PageRouteInfo<void> {
  const SearchFilterRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SearchFilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchFilterRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchPage]
class SearchRoute extends _i15.PageRouteInfo<void> {
  const SearchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

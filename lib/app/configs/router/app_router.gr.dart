// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:safe_steps/auth/presentation/views/home_view.dart' as _i1;
import 'package:safe_steps/auth/presentation/views/login_view.dart' as _i3;
import 'package:safe_steps/auth/presentation/views/otp_view.dart' as _i2;
import 'package:safe_steps/auth/presentation/views/sign_up.dart' as _i4;
import 'package:safe_steps/bags/presentation/views/map_page.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter();

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    OtpView.name: (routeData) {
      final args =
          routeData.argsAs<OtpViewArgs>(orElse: () => const OtpViewArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.OtpView(key: args.key),
      );
    },
    LoginView.name: (routeData) {
      final args =
          routeData.argsAs<LoginViewArgs>(orElse: () => const LoginViewArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginView(key: args.key),
      );
    },
    SignUpView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpView(),
      );
    },
    MapView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MapView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i6.PageRouteInfo<void> {
  const HomeView({List<_i6.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OtpView]
class OtpView extends _i6.PageRouteInfo<OtpViewArgs> {
  OtpView({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          OtpView.name,
          args: OtpViewArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OtpView';

  static const _i6.PageInfo<OtpViewArgs> page = _i6.PageInfo<OtpViewArgs>(name);
}

class OtpViewArgs {
  const OtpViewArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'OtpViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LoginView]
class LoginView extends _i6.PageRouteInfo<LoginViewArgs> {
  LoginView({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginView.name,
          args: LoginViewArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i6.PageInfo<LoginViewArgs> page =
      _i6.PageInfo<LoginViewArgs>(name);
}

class LoginViewArgs {
  const LoginViewArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SignUpView]
class SignUpView extends _i6.PageRouteInfo<void> {
  const SignUpView({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpView.name,
          initialChildren: children,
        );

  static const String name = 'SignUpView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MapView]
class MapView extends _i6.PageRouteInfo<void> {
  const MapView({List<_i6.PageRouteInfo>? children})
      : super(
          MapView.name,
          initialChildren: children,
        );

  static const String name = 'MapView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:safe_steps/bags/presentation/views/home_view.dart' as _i4;
import 'package:safe_steps/auth/presentation/views/login_view.dart' as _i2;
import 'package:safe_steps/auth/presentation/views/otp_view.dart' as _i3;
import 'package:safe_steps/auth/presentation/views/sign_up.dart' as _i5;
import 'package:safe_steps/bags/presentation/views/map_page.dart' as _i1;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter();

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MapView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MapView(),
      );
    },
    LoginView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    OtpView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OtpView(),
      );
    },
    HomeView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    SignUpView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpView(),
      );
    },
  };
}

/// generated route for
/// [_i1.MapView]
class MapView extends _i6.PageRouteInfo<void> {
  const MapView({List<_i6.PageRouteInfo>? children})
      : super(
          MapView.name,
          initialChildren: children,
        );

  static const String name = 'MapView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i6.PageRouteInfo<void> {
  const LoginView({List<_i6.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OtpView]
class OtpView extends _i6.PageRouteInfo<void> {
  const OtpView({List<_i6.PageRouteInfo>? children})
      : super(
          OtpView.name,
          initialChildren: children,
        );

  static const String name = 'OtpView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeView]
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
/// [_i5.SignUpView]
class SignUpView extends _i6.PageRouteInfo<void> {
  const SignUpView({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpView.name,
          initialChildren: children,
        );

  static const String name = 'SignUpView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:safe_steps/auth/presentation/views/home_view.dart' as _i3;
import 'package:safe_steps/auth/presentation/views/login_view.dart' as _i2;
import 'package:safe_steps/auth/presentation/views/sign_up.dart' as _i4;
import 'package:safe_steps/bags/presentation/views/map_page.dart' as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter();

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MapView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MapView(),
      );
    },
    LoginView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    HomeView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    SignUp.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUp(),
      );
    },
  };
}

/// generated route for
/// [_i1.MapView]
class MapView extends _i5.PageRouteInfo<void> {
  const MapView({List<_i5.PageRouteInfo>? children})
      : super(
          MapView.name,
          initialChildren: children,
        );

  static const String name = 'MapView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i5.PageRouteInfo<void> {
  const LoginView({List<_i5.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i5.PageRouteInfo<void> {
  const HomeView({List<_i5.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignUp]
class SignUp extends _i5.PageRouteInfo<void> {
  const SignUp({List<_i5.PageRouteInfo>? children})
      : super(
          SignUp.name,
          initialChildren: children,
        );

  static const String name = 'SignUp';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

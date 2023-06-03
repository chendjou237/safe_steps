import 'package:auto_route/auto_route.dart';

import 'package:safe_steps/app/configs/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        AutoRoute(page: HomeView.page, path: '/', initial: true),
        AutoRoute(page: MapView.page, path: '/map'),
        AutoRoute(page: SignUpView.page, path: '/signup'),
        AutoRoute(page: LoginView.page, path: '/login'),
        AutoRoute(page: OtpView.page, path: '/otp'),
      ];
}

import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        AutoRoute(page: HomeView.page, path: '/', initial: true),
        AutoRoute(page: MapView.page, path: '/map'),
        AutoRoute(page: SignUp.page, path: '/signup'),
        AutoRoute(page: LoginView.page, path: '/login')
      ];
}

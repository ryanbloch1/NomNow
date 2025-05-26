import 'package:auto_route/auto_route.dart';
import 'package:nom_now/app/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/welcome',
          page: WelcomeScreenRoute.page,
        ),
        AutoRoute(
          path: '/role-selection',
          page: RoleSelectionScreenRoute.page,
        ),
        AutoRoute(
          path: '/customer-home',
          page: CustomerHomeScreenRoute.page,
        ),
        AutoRoute(
          path: '/chef-registration',
          page: ChefRegistrationScreenRoute.page,
        ),
      ];
}

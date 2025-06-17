import 'package:auto_route/auto_route.dart';
import 'package:nom_now/app/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeScreenRoute.page,
        ),
        AutoRoute(page: RoleSelectionScreenRoute.page, initial: true),
      ];
}

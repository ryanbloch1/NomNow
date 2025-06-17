// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:nom_now/ui/onboarding/role_selection_screen.dart' as _i1;
import 'package:nom_now/ui/onboarding/welcome_screen.dart' as _i2;

/// generated route for
/// [_i1.RoleSelectionScreen]
class RoleSelectionScreenRoute extends _i3.PageRouteInfo<void> {
  const RoleSelectionScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RoleSelectionScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoleSelectionScreenRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.RoleSelectionScreen();
    },
  );
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreenRoute extends _i3.PageRouteInfo<void> {
  const WelcomeScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          WelcomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeScreenRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.WelcomeScreen();
    },
  );
}

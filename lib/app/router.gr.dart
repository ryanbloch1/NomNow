// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:nom_now/ui/onboarding/role_selection_screen.dart' as _i3;
import 'package:nom_now/ui/onboarding/welcome_screen.dart' as _i4;
import 'package:nom_now/ui/registration/chef/chef_registration_screen.dart'
    as _i1;
import 'package:nom_now/ui/registration/customer/customer_registration_screen.dart'
    as _i2;

/// generated route for
/// [_i1.ChefRegistrationScreen]
class ChefRegistrationScreenRoute extends _i5.PageRouteInfo<void> {
  const ChefRegistrationScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ChefRegistrationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChefRegistrationScreenRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChefRegistrationScreen();
    },
  );
}

/// generated route for
/// [_i2.CustomerRegistrationScreen]
class CustomerRegistrationScreenRoute extends _i5.PageRouteInfo<void> {
  const CustomerRegistrationScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CustomerRegistrationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerRegistrationScreenRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.CustomerRegistrationScreen();
    },
  );
}

/// generated route for
/// [_i3.RoleSelectionScreen]
class RoleSelectionScreenRoute extends _i5.PageRouteInfo<void> {
  const RoleSelectionScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RoleSelectionScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoleSelectionScreenRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.RoleSelectionScreen();
    },
  );
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeScreenRoute extends _i5.PageRouteInfo<void> {
  const WelcomeScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          WelcomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeScreenRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.WelcomeScreen();
    },
  );
}

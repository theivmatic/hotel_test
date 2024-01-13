// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:hotel_test/src/feature/presentation/screens/hotel_screen.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HotelRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HotelScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.HotelScreen]
class HotelRoute extends _i2.PageRouteInfo<void> {
  const HotelRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

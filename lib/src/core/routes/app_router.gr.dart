// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:hotel_test/src/feature/presentation/screens/hotel_screen.dart'
    as _i1;
import 'package:hotel_test/src/feature/presentation/screens/room_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HotelRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HotelScreen(),
      );
    },
    RoomRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RoomScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HotelScreen]
class HotelRoute extends _i3.PageRouteInfo<void> {
  const HotelRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RoomScreen]
class RoomRoute extends _i3.PageRouteInfo<void> {
  const RoomRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoomRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

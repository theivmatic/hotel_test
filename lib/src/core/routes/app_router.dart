import 'package:auto_route/auto_route.dart';
import 'package:hotel_test/src/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HotelRoute.page, initial: true),
        AutoRoute(page: RoomRoute.page),
      ];
}

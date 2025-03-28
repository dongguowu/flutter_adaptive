import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: AdaptiveScaffoldLayout.page,
      initial: true,
      children: [
        AutoRoute(page: VehicleListRoute.page, path: 'vehicles', initial: true),
        AutoRoute(
          page: VehicleDetailRoute.page,
          path: 'vehicles/:id',
        ), // Vehicle details
        AutoRoute(
          page: TemperatureHistoryRoute.page,
          path: 'temperature-history',
        ),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
      ],
    ),
  ];
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/features/router/app_router.gr.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AdaptiveScaffoldLayout extends ConsumerWidget {
  const AdaptiveScaffoldLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter(
      routes: [
        const VehicleListRoute(),
        VehicleDetailRoute(id: 1),
        const TemperatureHistoryRoute(),
        const ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return AdaptiveScaffold(
          selectedIndex: tabsRouter.activeIndex, // AutoTabsRouter manages index
          onSelectedIndexChange: (index) {
            tabsRouter.setActiveIndex(index); // Changes the tab instantly
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.list), label: "Vehicles"),
            NavigationDestination(
              icon: Icon(Icons.thermostat),
              label: "Temp Control",
            ),
            NavigationDestination(
              icon: Icon(Icons.history),
              label: "Temp History",
            ),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          body: (_) => child, // AutoTabsRouter provides the correct page
        );
      },
    );
  }

  // int _getSelectedIndex(BuildContext context) {
  //   final currentRoute = AutoRouter.of(context).topMatch.name;

  //   if (currentRoute == VehicleListRoute.name) return 0;
  //   if (currentRoute == VehicleDetailRoute.name) return 1;
  //   if (currentRoute == TemperatureHistoryRoute.name) return 2;
  //   if (currentRoute == ProfileRoute.name) return 3;

  //   return 0; // Default to Vehicles
  // }
}

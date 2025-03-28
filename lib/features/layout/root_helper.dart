import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/features/router/app_router.gr.dart';

class RootHelper {
  final Widget child = Center();

  static List<PageRouteInfo<Object?>> routes = [
    const VehicleListRoute(),
    VehicleDetailRoute(id: 1),
    const TemperatureHistoryRoute(),
    const ProfileRoute(),
  ];

  static List<NavigationDestination> destinations = <NavigationDestination>[
    NavigationDestination(icon: Icon(Icons.list), label: "Vehicles"),
    NavigationDestination(icon: Icon(Icons.thermostat), label: "Temp Control"),
    NavigationDestination(icon: Icon(Icons.history), label: "Temp History"),
    NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
  ];
}

// Future<void> onSelectedIndexChange(int index) async {
//   selectedTabNotifier.updateSelectedTab(index);
// }

// final selectedTab = ref.watch(selectedTabProvider).valueOrNull;
// final selectedTabNotifier = ref.read(selectedTabProvider.notifier);

//     Future<void> onSelectedIndexChange(int index) async {
//   selectedTabNotifier.updateSelectedTab(index);
// }

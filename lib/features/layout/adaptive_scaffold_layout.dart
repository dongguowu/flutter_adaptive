// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/features/layout/selected_tab_notifier.dart';
import 'package:flutter_adaptive/features/router/app_router.gr.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, this.transitionDuration = 1000});

  /// Declare transition duration.
  final int transitionDuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int _transitionDuration = transitionDuration;
    final selectedTab = ref.watch(selectedTabProvider).valueOrNull;
    final selectedTabNotifier = ref.read(selectedTabProvider.notifier);

    final routes = [
      const VehicleListRoute(),
      VehicleDetailRoute(id: 1),
      const TemperatureHistoryRoute(),
      const ProfileRoute(),
    ];

    // final tabsRouter = AutoTabsRouter.of(context);

    final Widget child = Center();

    final destinations = [
      NavigationDestination(icon: const Icon(Icons.list), label: "Vehicles"),
      NavigationDestination(
        icon: const Icon(Icons.thermostat),
        label: "Temp Control",
      ),
      NavigationDestination(
        icon: const Icon(Icons.history),
        label: "Temp History",
      ),
      NavigationDestination(icon: const Icon(Icons.person), label: "Profile"),
    ];

    Future<void> onSelectedIndexChange(int index) async {
      selectedTabNotifier.updateSelectedTab(index);
    }
    

    return AdaptiveScaffold(
      // An option to override the default transition duration.
      transitionDuration: Duration(milliseconds: _transitionDuration),
      // An option to override the default breakpoints used for small, medium,
      // mediumLarge, large, and extraLarge.
      smallBreakpoint: const Breakpoint(endWidth: 700),
      mediumBreakpoint: const Breakpoint(beginWidth: 700, endWidth: 1000),
      mediumLargeBreakpoint: const Breakpoint(beginWidth: 1000, endWidth: 1200),
      largeBreakpoint: const Breakpoint(beginWidth: 1200, endWidth: 1600),
      extraLargeBreakpoint: const Breakpoint(beginWidth: 1600),
      useDrawer: false,
      selectedIndex: selectedTab,

      onSelectedIndexChange: (int index) async {
        await onSelectedIndexChange(index);
      },
      destinations: destinations,
      body: (_) => child, // AutoTabsRouter provides the correct page
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

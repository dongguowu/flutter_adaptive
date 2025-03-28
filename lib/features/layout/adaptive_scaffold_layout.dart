// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/features/layout/root_helper.dart';
import 'package:flutter_adaptive/features/layout/selected_tab_notifier.dart';
import 'package:flutter_adaptive/features/router/app_router.gr.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MyHomePage extends ConsumerStatefulWidget {
  /// Creates a const [MyHomePage].
  const MyHomePage({super.key, this.transitionDuration = 1000});

  /// Declare transition duration.
  final int transitionDuration;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  // int selectedNavigation = 0;
  int _transitionDuration = 1000;

  // Initialize transition time variable.
  @override
  void initState() {
    super.initState();
    setState(() {
      _transitionDuration = widget.transitionDuration;
    });
  }

  final TextStyle headerColor = const TextStyle(
    color: Color.fromARGB(255, 255, 201, 197),
  );

  @override
  Widget build(BuildContext context) {
    final NavigationRailThemeData navRailTheme =
        Theme.of(context).navigationRailTheme;

    int selectedNavigation = ref.watch(selectedTabProvider).valueOrNull ?? 0;
    final selectedTabNotifier = ref.read(selectedTabProvider.notifier);

    Future<void> onSelectedIndexChange(int index) async {
      selectedTabNotifier.updateSelectedTab(index);
    }

    // Define the children to display within the body.
    final List<Widget> fakeChildren = List<Widget>.generate(10, (int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: const Color.fromARGB(255, 255, 201, 197),
          height: 400,
        ),
      );
    });

    final Widget trailingNavRail = Column(children: <Widget>[
      ],
    );

    // Define the list of destinations to be used within the app.
    List<NavigationDestination> destinations = RootHelper.destinations;

    // Wrap the AdaptiveLayout in a AutoTabsRouter to enable navigation between tabs.
    // This is a workaround to use AutoTabsRouter with AdaptiveLayout.
    // The AutoTabsRouter is a widget that provides a way to navigate between tabs
    // using the AutoRoute package.
    return AutoTabsRouter(
      routes: [
        const VehicleListRoute(),
        VehicleDetailRoute(id: 1),
        const TemperatureHistoryRoute(),
        const ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return AdaptiveLayout(
          // An option to override the default transition duration.
          transitionDuration: Duration(milliseconds: _transitionDuration),
          // Primary navigation config has nothing from 0 to 600 dp screen width,
          // then an unextended NavigationRail with no labels and just icons then an
          // extended NavigationRail with both icons and labels.
          primaryNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.medium: SlotLayout.from(
                inAnimation: AdaptiveScaffold.leftOutIn,
                key: const Key('Primary Navigation Medium'),
                builder:
                    (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: tabsRouter.activeIndex,
                      onDestinationSelected: (int newIndex) {
                        setState(() {
                          onSelectedIndexChange(newIndex);
                          tabsRouter.setActiveIndex(newIndex);
                        });
                      },
                      leading: const Icon(Icons.menu),
                      destinations:
                          destinations
                              .map(
                                (NavigationDestination destination) =>
                                    AdaptiveScaffold.toRailDestination(
                                      destination,
                                    ),
                              )
                              .toList(),
                      backgroundColor: navRailTheme.backgroundColor,
                      selectedIconTheme: navRailTheme.selectedIconTheme,
                      unselectedIconTheme: navRailTheme.unselectedIconTheme,
                      selectedLabelTextStyle:
                          navRailTheme.selectedLabelTextStyle,
                      unSelectedLabelTextStyle:
                          navRailTheme.unselectedLabelTextStyle,
                    ),
              ),
              Breakpoints.mediumLarge: SlotLayout.from(
                key: const Key('Primary Navigation MediumLarge'),
                inAnimation: AdaptiveScaffold.leftOutIn,
                builder:
                    (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {
                        setState(() {
                          selectedNavigation = newIndex;
                        });
                      },
                      extended: true,
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('REPLY', style: headerColor),
                          const Icon(Icons.menu_open),
                        ],
                      ),
                      destinations:
                          destinations
                              .map(
                                (NavigationDestination destination) =>
                                    AdaptiveScaffold.toRailDestination(
                                      destination,
                                    ),
                              )
                              .toList(),
                      trailing: trailingNavRail,
                      backgroundColor: navRailTheme.backgroundColor,
                      selectedIconTheme: navRailTheme.selectedIconTheme,
                      unselectedIconTheme: navRailTheme.unselectedIconTheme,
                      selectedLabelTextStyle:
                          navRailTheme.selectedLabelTextStyle,
                      unSelectedLabelTextStyle:
                          navRailTheme.unselectedLabelTextStyle,
                    ),
              ),
              Breakpoints.large: SlotLayout.from(
                key: const Key('Primary Navigation Large'),
                inAnimation: AdaptiveScaffold.leftOutIn,
                builder:
                    (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {
                        setState(() {
                          selectedNavigation = newIndex;
                        });
                      },
                      extended: true,
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('REPLY', style: headerColor),
                          const Icon(Icons.menu_open),
                        ],
                      ),
                      destinations:
                          destinations
                              .map(
                                (NavigationDestination destination) =>
                                    AdaptiveScaffold.toRailDestination(
                                      destination,
                                    ),
                              )
                              .toList(),
                      trailing: trailingNavRail,
                      backgroundColor: navRailTheme.backgroundColor,
                      selectedIconTheme: navRailTheme.selectedIconTheme,
                      unselectedIconTheme: navRailTheme.unselectedIconTheme,
                      selectedLabelTextStyle:
                          navRailTheme.selectedLabelTextStyle,
                      unSelectedLabelTextStyle:
                          navRailTheme.unselectedLabelTextStyle,
                    ),
              ),
              Breakpoints.extraLarge: SlotLayout.from(
                key: const Key('Primary Navigation ExtraLarge'),
                inAnimation: AdaptiveScaffold.leftOutIn,
                builder:
                    (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {
                        setState(() {
                          selectedNavigation = newIndex;
                        });
                      },
                      extended: true,
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('REPLY', style: headerColor),
                          const Icon(Icons.menu_open),
                        ],
                      ),
                      destinations:
                          destinations
                              .map(
                                (NavigationDestination destination) =>
                                    AdaptiveScaffold.toRailDestination(
                                      destination,
                                    ),
                              )
                              .toList(),
                      trailing: trailingNavRail,
                      backgroundColor: navRailTheme.backgroundColor,
                      selectedIconTheme: navRailTheme.selectedIconTheme,
                      unselectedIconTheme: navRailTheme.unselectedIconTheme,
                      selectedLabelTextStyle:
                          navRailTheme.selectedLabelTextStyle,
                      unSelectedLabelTextStyle:
                          navRailTheme.unselectedLabelTextStyle,
                    ),
              ),
            },
          ),
          // Body switches between a ListView and a GridView from small to medium
          // breakpoints and onwards.
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('Body Small'),
                builder: (_) => child,
              ),
              Breakpoints.medium: SlotLayout.from(
                key: const Key('Body Medium'),
                builder: (_) => child,
              ),
              Breakpoints.mediumLarge: SlotLayout.from(
                key: const Key('Body MediumLarge'),
                builder:
                    (_) => GridView.count(
                      crossAxisCount: 3,
                      children: fakeChildren,
                    ),
              ),
              Breakpoints.large: SlotLayout.from(
                key: const Key('Body Large'),
                builder:
                    (_) => GridView.count(
                      crossAxisCount: 4,
                      children: fakeChildren,
                    ),
              ),
              Breakpoints.extraLarge: SlotLayout.from(
                key: const Key('Body ExtraLarge'),
                builder:
                    (_) => GridView.count(
                      crossAxisCount: 5,
                      children: fakeChildren,
                    ),
              ),
            },
          ),
          // BottomNavigation is only active in small views defined as under 600 dp
          // width.
          bottomNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('Bottom Navigation Small'),
                inAnimation: AdaptiveScaffold.bottomToTop,
                outAnimation: AdaptiveScaffold.topToBottom,
                builder:
                    (_) => AdaptiveScaffold.standardBottomNavigationBar(
                      destinations: destinations,
                      currentIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {
                        setState(() {
                          onSelectedIndexChange(newIndex);
                          tabsRouter.setActiveIndex(newIndex);
                        });
                      },
                    ),
              ),
            },
          ),
        );
      },
    );
    // End of AutoTabsRouter workaround.
  }
}

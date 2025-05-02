# flutter_adaptiveFlutter Adaptive Navigation with Auto Route & Riverpod

This project is a Flutter application that follows an adaptive design using flutter_adaptive_scaffold. It integrates AutoRoute for navigation and Riverpod for state management. The app features a bottom navigation bar that remains visible across different pages.


🛠️ Key Features
Adaptive Navigation:

Uses AdaptiveScaffold to provide a responsive navigation layout.

Keeps the navigation bar persistent across all screens.

Routing with AutoRoute:

AutoTabsRouter manages tab-based navigation.

Each tab is linked to a specific screen.

Switching tabs does not cause full page rebuilds.

State Management with Riverpod:

The app uses ConsumerWidget for efficient reactivity.

WidgetRef allows access to Riverpod providers.

1. AdaptiveScaffold with side navi and bottom navi
2. Keep Navigation Bar Persistent
3. Define Routes with Nested Structure
4. Use Path-Based Navigation

```
lib/
│── features/
│   ├── router/
│   │   ├── app_router.dart        # Defines all app routes
│   │   ├── app_router.gr.dart     # AutoRoute-generated file
│   ├── vehicles/
│   │   ├── vehicle_list_page.dart # Vehicles list screen
│   │   ├── vehicle_detail_page.dart # Vehicle details screen
│   ├── temperature/
│   │   ├── temperature_history_page.dart # Temperature history
│   ├── profile/
│   │   ├── profile_page.dart      # Profile screen
│── main.dart                      # App entry point
│── adaptive_scaffold_layout.dart  # Adaptive navigation layout
```

project is structured well with AutoRoute + AdaptiveScaffold + Riverpod. 

🚀 The bottom navigation remains persistent, and tabs switch smoothly. If needed, you can refine routing for better deep linking and state persistence.


Improvements & Next Steps
Fix _getSelectedIndex: The commented _getSelectedIndex function isn't needed since AutoTabsRouter directly manages the active tab.

Lazy Loading: Optimize performance by setting lazyLoad: true in AutoTabsRouter.

Navigation from List to Details:

Ensure VehicleDetailRoute is not part of AutoTabsRouter, so it doesn't override the tab navigation.
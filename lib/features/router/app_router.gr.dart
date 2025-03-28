// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_adaptive/features/layout/adaptive_scaffold_layout.dart'
    as _i1;
import 'package:flutter_adaptive/features/temperatureHistoryChart/ui/temperature_history_chart_page.dart'
    as _i3;
import 'package:flutter_adaptive/features/userProfile/ui/profile_page.dart'
    as _i2;
import 'package:flutter_adaptive/features/vehicleList/ui/vehicle_detail_page.dart'
    as _i4;
import 'package:flutter_adaptive/features/vehicleList/ui/vehicle_list_page.dart'
    as _i5;

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i6.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i7.Key? key,
    int transitionDuration = 1000,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         MyHomeRoute.name,
         args: MyHomeRouteArgs(
           key: key,
           transitionDuration: transitionDuration,
         ),
         initialChildren: children,
       );

  static const String name = 'MyHomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyHomeRouteArgs>(
        orElse: () => const MyHomeRouteArgs(),
      );
      return _i1.MyHomePage(
        key: args.key,
        transitionDuration: args.transitionDuration,
      );
    },
  );
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({this.key, this.transitionDuration = 1000});

  final _i7.Key? key;

  final int transitionDuration;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, transitionDuration: $transitionDuration}';
  }
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProfilePage();
    },
  );
}

/// generated route for
/// [_i3.TemperatureHistoryPage]
class TemperatureHistoryRoute extends _i6.PageRouteInfo<void> {
  const TemperatureHistoryRoute({List<_i6.PageRouteInfo>? children})
    : super(TemperatureHistoryRoute.name, initialChildren: children);

  static const String name = 'TemperatureHistoryRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.TemperatureHistoryPage();
    },
  );
}

/// generated route for
/// [_i4.VehicleDetailPage]
class VehicleDetailRoute extends _i6.PageRouteInfo<VehicleDetailRouteArgs> {
  VehicleDetailRoute({
    required int id,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         VehicleDetailRoute.name,
         args: VehicleDetailRouteArgs(id: id, key: key),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'VehicleDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<VehicleDetailRouteArgs>(
        orElse: () => VehicleDetailRouteArgs(id: pathParams.getInt('id')),
      );
      return _i4.VehicleDetailPage(id: args.id, key: args.key);
    },
  );
}

class VehicleDetailRouteArgs {
  const VehicleDetailRouteArgs({required this.id, this.key});

  final int id;

  final _i7.Key? key;

  @override
  String toString() {
    return 'VehicleDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.VehicleListPage]
class VehicleListRoute extends _i6.PageRouteInfo<void> {
  const VehicleListRoute({List<_i6.PageRouteInfo>? children})
    : super(VehicleListRoute.name, initialChildren: children);

  static const String name = 'VehicleListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.VehicleListPage();
    },
  );
}

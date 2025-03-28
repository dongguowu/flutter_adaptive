import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../router/app_router.gr.dart';

// Sample Vehicle Model
class Vehicle {
  final int id;
  final String name;
  final String model;
  final int year;

  Vehicle({
    required this.id,
    required this.name,
    required this.model,
    required this.year,
  });
}

final fakeList = [
  Vehicle(id: 1, name: "Tesla Model S", model: "Plaid", year: 2023),
  Vehicle(id: 2, name: "Ford Mustang Mach-E", model: "GT", year: 2022),
  Vehicle(id: 3, name: "Rivian R1T", model: "Adventure", year: 2023),
];

@RoutePage()
class VehicleListPage extends ConsumerWidget {
  const VehicleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicles = fakeList;
    // final vehicles = ref.watch(fakeList);

    return Scaffold(
      appBar: AppBar(title: const Text("Vehicles")),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                vehicle.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Model: ${vehicle.model} | Year: ${vehicle.year}"),
              onTap:
                  () => context.router.push(
                    VehicleDetailRoute(id: vehicle.id),
                  ), // Navigate to details
            ),
          );
        },
      ),
    );
  }
}

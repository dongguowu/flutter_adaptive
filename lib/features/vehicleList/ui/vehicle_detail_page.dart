import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/features/vehicleList/ui/vehicle_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

// Sample Data Provider (Replace with API fetch logic)
@RoutePage()
class VehicleDetailPage extends ConsumerWidget {
  final int id; // AutoRoute will pass this parameter from the path

  const VehicleDetailPage({@PathParam('id') required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicleAsync = ref.watch(vehicleRepositoryProvider(id));

    return Scaffold(
      appBar: AppBar(title: const Text("Vehicle Details")),
      body: vehicleAsync.when(
        data:
            (vehicle) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(),
                  const SizedBox(height: 16),
                  Text(
                    "Name: ${vehicle.name}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Model: ${vehicle.model}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Year: ${vehicle.year}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => context.router.pop(),
                    child: const Text("Back to Vehicles"),
                  ),
                ],
              ),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error: $err")),
      ),
    );
  }
}

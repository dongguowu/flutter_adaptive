import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'vehicle_detail_page.dart';

part 'vehicle_provider.g.dart';

@riverpod
Future<Vehicle> vehicleRepository(Ref ref, int vehicleId) async {
  await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
  return Vehicle(
    id: vehicleId,
    name: "Tesla Model S",
    model: "Plaid",
    year: 2023,
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TemperatureHistoryPage extends StatelessWidget {
  const TemperatureHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Temperature History", style: TextStyle(fontSize: 24)),
    );
  }
}

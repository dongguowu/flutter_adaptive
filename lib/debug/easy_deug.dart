import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
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
        ),
        body: const Center(child: Text('Check Icons')),
      ),
    );
  }
}

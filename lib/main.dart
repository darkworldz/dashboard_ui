import 'package:flutter/material.dart';
import 'package:dashboard_ui/screens/dashboard_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardUi(),
    );
  }
}

import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/demo_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kabar',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const DemoNavigationScreen(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:travel_ui/onboard/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(
          color: Color(0xFF1D3FFF),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color(0xFF1D3FFF)),
      ),
      home: const OnboardScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_test/src/feature/presentation/screens/hotel_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
        ),
      ),
      home: const HotelScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_nike_storev2_app/colors.dart';
import 'package:flutter_nike_storev2_app/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundColor,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

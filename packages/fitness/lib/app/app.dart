import 'package:fitness/features/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => '',
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
    ),
  ),
);

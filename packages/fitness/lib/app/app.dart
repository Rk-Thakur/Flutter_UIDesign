import 'package:fitness/features/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateTitle: (context) => '',
          title: 'Fitness App',
          theme: lightTheme,
          home: const HomePage(),
        );
      },
    );
  }
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
    ),
  ),
);

import 'package:fitness_components/fitness_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Freminder(),
            SizedBox(
              height: 50.h,
            ),
            const SleepSchedule(),
            SizedBox(
              height: 50.h,
            ),
            const Progress(),
            SizedBox(
              height: 50.h,
            ),
            const TodayTarget(),
          ],
        ),
      ),
    );
  }
}

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
            const TodayTarget(),
            SizedBox(
              height: 10.h,
            ),
            const SleepBanner(),
            SizedBox(
              height: 10.h,
            ),
            const HomeBanner(),
            SizedBox(
              height: 10.h,
            ),
            const DailyAction(
              title: 'Today Target',
              buttonTitle: 'Check',
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}

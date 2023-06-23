import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/ui/size_box.dart';

import '../../onboarding/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          upperSizedBox,
          SizedBox(
            width: 375.w,
            height: 326.h,
            child: Column(
              children: [
                Image.asset(
                  'assets/illustration.png',
                  width: 375.w,
                  height: 264.h,
                ),
                const Spacer(),
                Text(
                  "CodeFactory",
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

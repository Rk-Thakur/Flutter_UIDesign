import 'package:fitness_components/fitness_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepBanner extends StatelessWidget {
  const SleepBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 150.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xff92a3fd),
            Color(0xff9dceff),
          ],
        ),
        borderRadius: BorderRadius.circular(22.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.w, left: 20.h),
            child: SizedBox(
              width: 120.w,
              height: 50.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Night Sleep',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '8h 20m',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 78.h,
            width: 315.w,
            child: Picture(
              source: Asset.images.sleepgraph,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

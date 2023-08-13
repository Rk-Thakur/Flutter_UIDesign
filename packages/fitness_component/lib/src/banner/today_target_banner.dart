import 'package:fitness_components/fitness_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayTarget extends StatelessWidget {
  const TodayTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 140.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            const Color(0xff92a3fd).withOpacity(.2),
            const Color(0xff9dceff).withOpacity(.2),
          ],
        ),
        borderRadius: BorderRadius.circular(22.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            SizedBox(
              width: 275.w,
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today Target',
                    style: TextStyle(
                      color: const Color(0xff1D1617),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xff92a3fd),
                          Color(0xff9dceff),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TodayContainer(
                  source: Asset.images.glass,
                  title: '8L',
                  subtitle: 'Water Intake',
                ),
                TodayContainer(
                  source: Asset.images.boot,
                  title: '2400',
                  subtitle: 'Foot Steps',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TodayContainer extends StatelessWidget {
  const TodayContainer({
    required this.source,
    required this.title,
    required this.subtitle,
    super.key,
  });
  final String source;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 130.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.sp),
        child: Row(
          children: [
            Picture(
              source: source,
              height: 34.h,
              width: 25.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            SizedBox(
              height: 41.h,
              width: 77.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: const Color(0xff7B6F72),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

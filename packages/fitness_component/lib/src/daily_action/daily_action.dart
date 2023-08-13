import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyAction extends StatelessWidget {
  const DailyAction({
    required this.buttonTitle,
    required this.title,
    super.key,
  });
  final String title;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 60.h,
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
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1D1617),
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(22.sp),
              child: Container(
                width: 90.w,
                height: 30.h,
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
                child: Center(
                  child: Text(
                    buttonTitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

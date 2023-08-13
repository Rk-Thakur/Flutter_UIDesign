import 'package:fitness_components/fitness_component.dart';
import 'package:fitness_components/src/button/fbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.sp, top: 20.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track Your Progress Each',
                  style: TextStyle(
                    color: const Color(0xff1D1617),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff92a3fd),
                        Color(0xff9dceff),
                      ],
                    ).createShader(bounds);
                  },
                  child: Text(
                    'Month with Photo',
                    style: TextStyle(
                      color: const Color(0xff1D1617),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const FButton(
                  buttonTitle: 'Learn More',
                  firstColor: Color(0xff92a3fd),
                  secondColor: Color(0xff9dceff),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.sp, top: 20.sp, bottom: 20.sp),
            child: Picture(
              source: Asset.images.progress,
            ),
          )
        ],
      ),
    );
  }
}

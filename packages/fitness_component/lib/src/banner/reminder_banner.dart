import 'package:fitness_components/fitness_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Freminder extends StatelessWidget {
  const Freminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: const Color(0xffFF725E).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Picture(
              source: Asset.images.calander,
              height: 60.h,
              width: 60.w,
            ),
          ),
          SizedBox(
            width: 188.w,
            height: 45.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reminder!',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Next Photos Fall July 08',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: const Color(0xff1D1617),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.sp, right: 15.sp),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.cancel,
                size: 20.h,
                color: const Color(0xff7B6F72),
              ),
            ),
          )
        ],
      ),
    );
  }
}

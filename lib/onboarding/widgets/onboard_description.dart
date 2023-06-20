import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/contants/colors.dart';

class OnBoardingDescription extends StatelessWidget {
  const OnBoardingDescription({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image sizedbox
        SizedBox(
          height: 264.h,
          child: Image.asset(image),
        ),
        //Description text
        SizedBox(
          height: 144.h,
          child: Column(
            children: [
              //bold text
              SizedBox(
                height: 72.h,
                width: 341.w,
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                    color: boldTextColor,
                  ),
                )),
              ),
              const Spacer(),
              //secondary text
              SizedBox(
                height: 64.h,
                width: 341.w,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: secondaryTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

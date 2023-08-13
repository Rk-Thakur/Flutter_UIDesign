import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FButton extends StatelessWidget {
  const FButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(50),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
          vertical: 14.h,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff92a3fd),
              Color(0xff9dceff),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(50), // Rounded corners
        ),
        child: Center(
          child: Text(
            'Learn More',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

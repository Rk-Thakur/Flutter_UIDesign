import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FButton extends StatelessWidget {
  const FButton({
    required this.buttonTitle,
    required this.firstColor,
    required this.secondColor,
    super.key,
  });
  final String buttonTitle;
  final Color firstColor;
  final Color secondColor;

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
          gradient: LinearGradient(
            colors: [firstColor, secondColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(50), // Rounded corners
        ),
        child: Center(
          child: Text(
            buttonTitle,
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

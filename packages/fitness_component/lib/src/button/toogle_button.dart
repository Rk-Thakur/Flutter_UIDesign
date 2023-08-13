import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FToogleButton extends StatefulWidget {
  const FToogleButton({super.key});

  @override
  State<FToogleButton> createState() => _FToogleButtonState();
}

class _FToogleButtonState extends State<FToogleButton> {
  final isSelected = <bool>[true, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 60.h,
      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(99.sp)),
      child: ToggleButtons(
        selectedColor: Colors.white,
        color: Colors.green,
        fillColor: Colors.lightBlueAccent,
        isSelected: isSelected,
        children: const [
          Text('Photo'),
          Text('Statistic'),
        ],
        onPressed: (index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      ),
    );
  }
}

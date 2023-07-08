import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/ui/size_box.dart';

import '../../login/view/login_screen.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ['Your Courses', 'Saved', 'Payment'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 6.0),
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(100),
        //     splashColor: appThemeColor,
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: Container(
        //       width: 40.w,
        //       height: 40.h,
        //       decoration: BoxDecoration(
        //           shape: BoxShape.circle, border: Border.all(color: secondaryTextColor, width: 2)),
        //       child: const Icon(
        //         Icons.arrow_back,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ),
        // ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: const Color(0xff3C3A36),
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -.5.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          children: [
            upperSizedBox,
            SizedBox(
              width: 375.w,
              height: 492.h,
              child: Column(
                children: [
                  SizedBox(
                    width: 172.w,
                    height: 172.h,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 140.w,
                        height: 140.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4.w,
                            color: const Color(0xff65AAEA),
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/avatar.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ...list.map((e) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.sp),
                              ),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.sp,
                              )),
                          child: Center(
                              child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -.5,
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                      ],
                    );
                  }),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff78746d)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

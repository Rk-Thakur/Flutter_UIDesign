import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
          child: Column(
            children: [
              //Navbar
              SizedBox(
                width: 375.w,
                height: 44.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hey, Ranjan!",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: const Color(0xff8c8e97)),
                    ),
                    Image.asset(
                      'assets/24Menu.png',
                      color: const Color(0xff191d30),
                    )
                  ],
                ),
              ),
              //body
              SizedBox(
                width: 375.w,
                height: 720.h,
                child: Column(
                  children: [
                    //title
                    SizedBox(
                      height: 38.h,
                      child: Row(
                        children: [
                          Text(
                            "Thursday",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 34.sp,
                                letterSpacing: -0.37,
                                color: const Color(0xff191d30)),
                          ),
                          Image.asset(
                            'assets/menu.png',
                            color: const Color(0xff191d30),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    //analytics
                    Container(
                      height: 126.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(24.sp)),
                          border: Border.all(
                            color: const Color(0xffecedef),
                            style: BorderStyle.solid,
                            width: 1.5.sp,
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 21.sp,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 177.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 56.h,
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Your plan \nis almost done!",
                                          style: TextStyle(
                                            color: const Color(0xff191d30),
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 12.h,
                                          width: 12.w,
                                          child: Image.asset(
                                            'assets/up.png',
                                            color: const Color(0xff67b779),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        SizedBox(
                                          width: 161.w,
                                          child: Text(
                                            "13% than week ago",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16.sp,
                                                color: const Color(0xff8C8E97)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 86.w,
                              color: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/contants/colors.dart';
import 'package:uidesign/login/view/login_screen.dart';

import '../../core/ui/size_box.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          children: [
            upperSizedBox,
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                splashColor: appThemeColor,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: secondaryTextColor, width: 2)),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            SizedBox(
              width: 375.w,
              height: 650.h,
              child: Column(
                children: [
                  Image.asset(
                    'assets/illustration.png',
                    width: 343.w,
                    height: 253.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 343.w,
                    height: 61.h,
                    child: Column(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              color: const Color(0xff3c3a36)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Create your account",
                          style: TextStyle(
                              fontSize: 14.sp, letterSpacing: -0.5, color: const Color(0xff78746d)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 343.w,
                    height: 300.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 53.h,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'Name',
                              contentPadding: EdgeInsets.all(
                                16.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 53.h,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'E - Mail',
                              contentPadding: EdgeInsets.all(
                                16.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 53.h,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.visibility_off_outlined)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'Password',
                              contentPadding: EdgeInsets.all(
                                16.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 56.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                              color: appThemeColor, borderRadius: BorderRadius.circular(16.sp)),
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff78746d)),
                          ),
                        ),
                      ],
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

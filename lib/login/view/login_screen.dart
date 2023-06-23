import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/ui/size_box.dart';

import '../../core/contants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          upperSizedBox,
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: SizedBox(
              width: 375.w,
              height: 652.h,
              child: Padding(
                padding: EdgeInsets.only(left: 16.sp, right: 16.sp),
                child: Column(
                  children: [
                    //illustration
                    Image.asset(
                      'assets/login.png',
                      width: 343.w,
                      height: 253.h,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    //login and socia login
                    SizedBox(
                      width: 343.w,
                      height: 109.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 341.w,
                            height: 32.h,
                            child: Text(
                              "Log in",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.5,
                                  color: const Color(0xff3c3a36)),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 341.w,
                            height: 21.h,
                            child: Text("Login with social networks",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    letterSpacing: -0.5,
                                    color: const Color(0xff78746d))),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 144.w,
                            height: 40.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff65aaea),
                                      borderRadius: BorderRadius.circular(8.sp),
                                    ),
                                    child: Image.asset('assets/facebook.png')),
                                const Spacer(),
                                Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff65aaea),
                                      borderRadius: BorderRadius.circular(8.sp),
                                    ),
                                    child: Image.asset('assets/instagram.png')),
                                const Spacer(),
                                Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff65aaea),
                                      borderRadius: BorderRadius.circular(8.sp),
                                    ),
                                    child: Image.asset('assets/google.png')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 343.w,
                      height: 226.h,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'Email',
                              contentPadding: EdgeInsets.only(
                                left: 14.sp,
                                top: 7.sp,
                              ),
                            ),
                            //
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon:
                                  const Icon(Icons.visibility_off_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'Password',
                              contentPadding: EdgeInsets.only(
                                left: 14.sp,
                                top: 7.sp,
                              ),
                            ),
                            //
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff78746d)),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Container(
                            height: 56.h,
                            width: 343.w,
                            decoration: BoxDecoration(
                                color: appThemeColor,
                                borderRadius: BorderRadius.circular(16.sp)),
                            child: Center(
                                child: Text(
                              "Log In",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff78746d)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

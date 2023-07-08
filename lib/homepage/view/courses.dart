// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uidesign/core/ui/size_box.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> category = ["#CSS", "#UI", "#Swift", "#UX", "#Dart"];
    List<Course> course = [
      Course(
          image: 'assets/course.png',
          time: '3 h 30 min',
          course: 'Dart',
          courseDescription: "Programming Language",
          coursePrice: '\$ 50'),
      Course(
          image: 'assets/course2.png',
          time: '3 h 30 min',
          course: 'UI',
          courseDescription: "Advanced Mobile Interface Design",
          coursePrice: '\$ 50'),
      Course(
          image: 'assets/course.png',
          time: '3 h 30 min',
          course: 'Swift',
          courseDescription: "Advanced Mobile Interface Design",
          coursePrice: '\$ 50'),
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              upperSizedBox,
              //userinfo notificatin beell and serarch button adh category
              SizedBox(
                width: 375.w,
                height: 192.h,
                child: Column(
                  children: [
                    //user info and notificaitno abell
                    SizedBox(
                      height: 72.h,
                      width: 375.w,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 271.w,
                            height: 72.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello,",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -.5.sp,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "Juana Antonieta",
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -.5.sp,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 22.w,
                          ),
                          Center(
                            child: Container(
                              width: 50.h,
                              height: 50.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 2, color: const Color(0xff3C3A36))),
                              child: const Icon(Icons.notifications_none_outlined),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      width: 375.w,
                      height: 56.h,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search_sharp),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'Search Course',
                          contentPadding: EdgeInsets.only(
                            left: 16.sp,
                            top: 16.sp,
                          ),
                        ),
                        //
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 375.w,
                      height: 40.h,
                      child: Row(
                        children: [
                          Text(
                            "Category:",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.5.sp,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Expanded(
                              child: Center(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: category.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      FittedBox(
                                        child: Container(
                                          width: 54.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff65AAEA),
                                              borderRadius:
                                                  BorderRadius.all(Radius.circular(30.sp))),
                                          child: Center(
                                              child: FittedBox(
                                            child: Text(
                                              category[index],
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: -.5.sp,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16.w,
                                      ),
                                    ],
                                  );
                                }),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              //Courses Detial

              ...course.map((e) {
                return Column(
                  children: [
                    Container(
                      width: 375.w,
                      height: 297.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.sp),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.sp,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 138.h,
                            width: 375.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffF8F2EE),
                                borderRadius: BorderRadius.circular(14.sp),
                                image: const DecorationImage(
                                    image: AssetImage(
                                  'assets/course.png',
                                ))),
                          ),
                          Container(
                            height: 40.h,
                            width: 375.w,
                            color: const Color(0xffF8F2EE),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 4.0.sp,
                                right: 16.sp,
                                bottom: 4.0.sp,
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 63.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff65AAEA),
                                    borderRadius: BorderRadius.circular(15.sp),
                                  ),
                                  child: Center(
                                      child: Text(
                                    '\$50',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 375.w,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom: 8.0.sp,
                                  left: 16.sp,
                                  right: 16.sp,
                                  top: 16.sp,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3 h 30 min",
                                      style: TextStyle(
                                          color: const Color(0xff5BA092),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      "UI",
                                      style: TextStyle(
                                        color: const Color(0xff3C3A36),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      "Advanced mobile interface design",
                                      style: TextStyle(
                                          color: const Color(0xff3C3A36),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class Course {
  String image;
  String time;
  String course;
  String courseDescription;
  String coursePrice;
  Course({
    required this.image,
    required this.time,
    required this.course,
    required this.courseDescription,
    required this.coursePrice,
  });
}

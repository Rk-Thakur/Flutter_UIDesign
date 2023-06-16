// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:getwidget/types/gf_progress_type.dart';
import 'package:uidesign/pill_tracking_ui/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<MedicineModel?> medicineModel = [
    MedicineModel(
        imageAsset: 'assets/tablet.png',
        medicineName: 'Omega 3',
        medicineDescription: '1 tablet after meals',
        days: '7 days'),
    MedicineModel(
        imageAsset: 'assets/capsule.png',
        medicineName: 'ComLivit',
        medicineDescription: '1 tablet after meals',
        days: '8 days'),
  ];
  List<MedicineModel?> insuline = [
    MedicineModel(
        imageAsset: 'assets/insulin.png',
        medicineName: '5-HTP',
        medicineDescription: '1 ampoule',
        days: '2 days'),
    MedicineModel(
        imageAsset: 'assets/inhale.png',
        medicineName: 'Inhaler',
        medicineDescription: '2 * A day',
        days: '2 days'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondPage()));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
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
                      'assets/menu.png',
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
                      height: 45.h,
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
                        padding: EdgeInsets.only(top: 13.sp, bottom: 10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 177.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 65.h,
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
                                  SizedBox(height: 5.h),
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
                            SizedBox(
                              width: 15.w,
                            ),
                            SizedBox(
                              width: 86.w,
                              child: GFProgressBar(
                                percentage: 0.7,
                                radius: 85,
                                circleWidth: 10,
                                animation: true,
                                progressHeadType: GFProgressHeadType.circular,
                                type: GFProgressType.circular,
                                backgroundColor: const Color(0xffe9f3e1),
                                progressBarColor: const Color(0xff67b779),
                                child: Text(
                                  '70%',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      color: const Color(0xff67b779)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    //banner
                    Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.sp)),
                          elevation: 4,
                          child: Container(
                              width: 375.w,
                              height: 101.h,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.sp)),
                                // image: const DecorationImage(
                                //     image: AssetImage("assets/gradient.png"),
                                //     fit: BoxFit.cover),
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color(0xff50e9df),
                                      Color(0xff87ef9f),
                                      Color(0xffdeffe5),
                                      Color(0xffedef87),
                                    ]),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.sp),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Get vaccinated",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Nearest vaccination center",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Positioned(
                            bottom: 3.h,
                            left: 170.w,
                            child: Image.asset('assets/pin.png'))
                      ],
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "8:00",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff191d30)),
                              )),
                          SizedBox(
                            height: 16.h,
                          ),
                          ...medicineModel.map((e) {
                            return Column(
                              children: [
                                Slidable(
                                  closeOnScroll: true,
                                  startActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      children: [
                                        SlidableAction(
                                          spacing: 10.h,
                                          onPressed: (doNothing) {},
                                          icon: Icons.delete,
                                        ),
                                      ]),
                                  endActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (value) {},
                                          borderRadius:
                                              BorderRadius.circular(24.sp),
                                          icon: Icons.archive,
                                        ),
                                      ]),
                                  child: Container(
                                    width: 327.w,
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(24.sp),
                                      border: Border.all(
                                          width: 1.sp,
                                          color: const Color(0xffecedef)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.sp, vertical: 20.sp),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            e!.imageAsset,
                                            height: 60.h,
                                            width: 60.w,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                              child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e.medicineName,
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xff191d30),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  SizedBox(
                                                    width: 215.w,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          e.medicineDescription,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xff8c8e97),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.sp,
                                                          ),
                                                        ),
                                                        Text(e.days,
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xff8c8e97),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 16.sp,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                              ],
                            );
                          }),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "14:00",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff191d30)),
                              )),
                          SizedBox(
                            height: 16.h,
                          ),
                          ...insuline.map((e) {
                            return Column(
                              children: [
                                Slidable(
                                  closeOnScroll: true,
                                  startActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      children: [
                                        SlidableAction(
                                          spacing: 10.h,
                                          onPressed: (doNothing) {},
                                          icon: Icons.delete,
                                        ),
                                      ]),
                                  endActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (value) {},
                                          borderRadius:
                                              BorderRadius.circular(24.sp),
                                          icon: Icons.archive,
                                        ),
                                      ]),
                                  child: Container(
                                    width: 327.w,
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(24.sp),
                                      border: Border.all(
                                          width: 1.sp,
                                          color: const Color(0xffecedef)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.sp, vertical: 20.sp),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            e!.imageAsset,
                                            height: 60.h,
                                            width: 60.w,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                              child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e.medicineName,
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xff191d30),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  SizedBox(
                                                    width: 215.w,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          e.medicineDescription,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xff8c8e97),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.sp,
                                                          ),
                                                        ),
                                                        Text(e.days,
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xff8c8e97),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 16.sp,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ))
                                        ],
                                      ),
                                    ),
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
                    )),
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

class MedicineModel {
  String imageAsset;
  String medicineName;
  String medicineDescription;
  String days;
  MedicineModel({
    required this.imageAsset,
    required this.medicineName,
    required this.medicineDescription,
    required this.days,
  });
}

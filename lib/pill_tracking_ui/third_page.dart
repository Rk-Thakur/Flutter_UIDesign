import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<MedicationModel> medicationModel = [
    MedicationModel(image: 'assets/tablet.png'),
    MedicationModel(image: 'assets/capsule.png'),
    MedicationModel(image: 'assets/insulin.png'),
    MedicationModel(image: 'assets/inhale.png'),
  ];
  List<String> times = ['5 m', '10 m', '15 m', '20 m', '30 m', '45 m'];
  final nameController = TextEditingController();
  List<bool?> isTappeds = [false, false, false, false, false, false];
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            //navbar
            SizedBox(
              height: 44.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  const Icon(Icons.close),
                ],
              ),
            ),
            //body
            SizedBox(
                height: 462.h,
                width: 375.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 20.h,
                      child: Text(
                        "2 is 2",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 83, 85, 92)),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 38.h,
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 34.sp,
                            color: const Color(0xff191d30)),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      width: 375.w,
                      height: 64.h,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 64.h,
                            width: 77.w,
                            child: Row(
                              children: [
                                Container(
                                  width: 5.w,
                                  height: 64.h,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 148, 212, 228),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100.sp))),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 64.w,
                                  height: 64.h,
                                  child: Image.asset('assets/insulin.png'),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: SizedBox(
                            width: 242.w,
                            height: 52.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Omega 3",
                                  style: TextStyle(
                                    color: const Color(0xff191d30),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1 table after  meals',
                                      style: TextStyle(
                                        color: const Color(0xff8c8e97),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                    Text('7 days',
                                        style: TextStyle(
                                          color: const Color(0xff8c8e97),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    SizedBox(
                      width: 375.w,
                      height: 24.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dose 1",
                            style: TextStyle(
                              color: const Color(0xff191d30),
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text("00:00",
                              style: TextStyle(
                                color: const Color(0xffc4cacf),
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 48.h,
                      child: Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff2f6f7),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Color(0xff191d30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    SizedBox(
                      height: 32.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reminders",
                            style: TextStyle(
                              color: const Color(0xff191d30),
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                          CupertinoSwitch(
                              activeColor: const Color(0xfff2f6f7),
                              trackColor: const Color(0xfff2f6f7),
                              thumbColor: isSwitched
                                  ? const Color(0xff1892fa)
                                  : Colors.white,
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(
                        height: 24.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: times.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isTappeds.contains(true)) {
                                          setState(() {
                                            isTappeds[index] = false;
                                          });
                                        } else {
                                          setState(() {
                                            isTappeds[index] =
                                                !isTappeds[index]!;
                                          });
                                        }
                                      });
                                    },
                                    child: SizedBox(
                                      width: 53.w,
                                      height: 24.h,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            times[index],
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w600,
                                                color: !isTappeds[index]!
                                                    ? const Color(0xffc4cacf)
                                                    : const Color(0xff191d30)),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                ],
                              );
                            }))
                  ],
                )),

            Expanded(child: Container()),
            Padding(
              padding: EdgeInsets.only(bottom: 17.sp),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 327.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                      color: !isSwitched
                          ? const Color(0xfff4f4f5)
                          : const Color(0xff1892fa),
                      borderRadius: BorderRadius.all(Radius.circular(16.0.sp))),
                  child: Center(
                      child: Text(
                    !isSwitched ? "Add medication times" : "Done",
                    style: TextStyle(
                      color:
                          !isSwitched ? const Color(0xffc4cacf) : Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MedicationModel {
  String image;
  MedicationModel({
    required this.image,
  });
}

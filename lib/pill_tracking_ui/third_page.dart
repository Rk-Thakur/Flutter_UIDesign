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
  List<String> time = [
    'NeverMind',
    'Before meals',
    'After Meals',
    'After Meals'
  ];
  final nameController = TextEditingController();
  List<bool?> isTapped = [false, false, false, false];
  List<bool?> isMedicine = [false, false, false, false];
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
                height: 405.h,
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
                        "1 is 2",
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
                        "Add Medication",
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
                        height: 74.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: medicationModel.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (isMedicine.contains(true)) {
                                              setState(() {
                                                isMedicine[index] = false;
                                              });
                                            } else {
                                              setState(() {
                                                isMedicine[index] =
                                                    !isMedicine[index]!;
                                              });
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 64.w,
                                          height: 64.h,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.2),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                              medicationModel[index].image),
                                        ),
                                      ),
                                      !isMedicine[index]!
                                          ? const SizedBox.shrink()
                                          : Positioned(
                                              left: 44.w,
                                              child: Container(
                                                  width: 18.sp,
                                                  height: 18.sp,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xff67b779)),
                                                  child: Image.asset(
                                                      'assets/tick.png')))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                  ),
                                ],
                              );
                            })),
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      height: 24.h,
                      child: TextFormField(
                        cursorColor: const Color(0xff191d30),
                        controller: nameController,
                        decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 139, 140, 141)
                                    .withOpacity(.30))),
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    SizedBox(
                      height: 24.h,
                      child: TextFormField(
                        cursorColor: const Color(0xff191d30),
                        decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintText: 'Single dose,e.g 1 tablet',
                            hintStyle: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 139, 140, 141)
                                    .withOpacity(.30))),
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    SizedBox(
                        height: 30.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: time.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isTapped.contains(true)) {
                                          setState(() {
                                            isTapped[index] = false;
                                          });
                                        } else {
                                          setState(() {
                                            isTapped[index] = !isTapped[index]!;
                                          });
                                        }
                                      });
                                    },
                                    child: Container(
                                      width: 120.w,
                                      height: 90.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.sp),
                                        color: const Color.fromARGB(
                                            255, 233, 241, 242),
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            time[index],
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w700,
                                                color: !isTapped[index]!
                                                    ? const Color.fromARGB(
                                                            255, 139, 140, 141)
                                                        .withOpacity(.30)
                                                    : const Color(0xff191d30)),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                  ),
                                ],
                              );
                            })),
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
                      color: nameController.text.isEmpty
                          ? const Color.fromARGB(255, 171, 128, 128)
                          : const Color(0xff1892fa),
                      borderRadius: BorderRadius.all(Radius.circular(16.0.sp))),
                  child: Center(
                      child: Text(
                    nameController.text.isEmpty ? "Fill in the fields" : "Next",
                    style: TextStyle(
                      color: Colors.white,
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

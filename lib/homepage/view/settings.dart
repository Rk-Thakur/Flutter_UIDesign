// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/ui/size_box.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AccountInfo> accountInfo = [
      AccountInfo(title: 'Name', subtitle: 'Juana Antonieta', icon: Icons.person),
      AccountInfo(title: 'Email', subtitle: 'juanita123@gmail.com', icon: Icons.email),
      AccountInfo(title: 'Password', subtitle: 'changed 2 weeks ago', icon: Icons.lock),
      AccountInfo(title: 'Name', subtitle: 'Juana Antonieta', icon: Icons.person),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Settings",
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperSizedBox,
              //setting avatar
              Container(
                height: 190.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/settings.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              //notifications
              Container(
                width: 375.w,
                height: 82.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.sp),
                    border: Border.all(
                      color: const Color(0xffBEBAB3),
                      width: 2.sp,
                    )),
                child: SizedBox(
                  width: 263.w,
                  height: 66.h,
                  child: Center(
                    child: ListTile(
                        leading: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: const BoxDecoration(
                            color: Color(0xff65AAEA),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "Notifications",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -.5.sp,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        trailing: Switch(
                            activeColor: const Color(0xff5BA092),
                            value: true,
                            onChanged: (value) {
                              value = false;
                            })),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Account Information",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ...accountInfo.map((e) {
                return Column(
                  children: [
                    Container(
                      width: 375.w,
                      height: 82.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.sp),
                          border: Border.all(
                            color: const Color(0xffBEBAB3),
                            width: 2.sp,
                          )),
                      child: SizedBox(
                        width: 263.w,
                        height: 66.h,
                        child: Center(
                          child: ListTile(
                              leading: Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: const BoxDecoration(
                                  color: Color(0xff65AAEA),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  e.icon,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text(
                                e.title,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -.5.sp,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              subtitle: Text(
                                e.subtitle,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff78746D),
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              trailing: const Icon(Icons.arrow_forward_ios)),
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
        ),
      ),
    );
  }
}

class AccountInfo {
  String title;
  String subtitle;
  IconData icon;
  AccountInfo({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

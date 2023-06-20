import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uidesign/core/contants/colors.dart';
import 'package:uidesign/login/view/login_screen.dart';

import '../../core/ui/size_box.dart';
import '../widgets/onboard_description.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pagaeIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                upperSizedBox,
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.sp, top: 10.sp),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: secondaryTextColor,
                              letterSpacing: 1.2,
                            ),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: SizedBox(
                    height: 446.h,
                    child: PageView.builder(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: demo_data.length,
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _pagaeIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return OnBoardingDescription(
                            image: demo_data[index].image,
                            title: demo_data[index].title,
                            description: demo_data[index].description,
                          );
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                        demo_data.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: dotIndicator(
                                isActive: index == _pagaeIndex,
                              ),
                            )),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              _pagaeIndex != demo_data.length - 1
                  ? _pageController.nextPage(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut)
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: Container(
                height: 56.h,
                width: 311.w,
                decoration: BoxDecoration(
                    color: appThemeColor,
                    borderRadius: BorderRadius.circular(16.sp)),
                child: Center(
                    child: Text(
                  _pagaeIndex != 2 ? "Next" : "Let's Start",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class dotIndicator extends StatelessWidget {
  const dotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 300),
      height: 6.h,
      width: isActive ? 16.w : 6.w,
      decoration: BoxDecoration(
        color: isActive ? activeIndicatorColor : inactiveIndicatorColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
    );
  }
}

class OnBoard {
  final String image;
  final String title;
  final String description;
  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
      image: 'assets/firstonboard.png',
      title: 'Learn anytime\n and anywhere',
      description:
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!'),
  OnBoard(
    image: 'assets/secondonbard.png',
    title: 'Find a course\n for you',
    description:
        'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
  ),
  OnBoard(
      image: 'assets/thirdonboard.png',
      title: 'Improve your skills',
      description:
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!'),
];

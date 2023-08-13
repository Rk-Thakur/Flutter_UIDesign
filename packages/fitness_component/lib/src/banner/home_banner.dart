import 'package:fitness_components/src/button/fbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final chartData = <ChartData>[
      ChartData('David', 20, const Color(0xffEEA4CE)),
      ChartData('Steve', 80, Colors.white),
    ];
    return Container(
      width: 315.w,
      height: 150.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xff92a3fd),
            Color(0xff9dceff),
          ],
        ),
        borderRadius: BorderRadius.circular(22.sp),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.sp, top: 26.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 165.w,
                  height: 44.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BMI(Body Mass Index)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'You have a normal weight',
                        style: TextStyle(
                          color: const Color(0xff1D1617),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const FButton(
                  buttonTitle: 'View More',
                  firstColor: Color(0xffC58BF2),
                  secondColor: Color(0xffEEA4CE),
                ),
              ],
            ),
          ),
          Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SfCircularChart(
              series: [
                PieSeries<ChartData, String>(
                  explode: true,
                  name: 'testing',
                  dataSource: chartData,
                  pointColorMapper: (ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

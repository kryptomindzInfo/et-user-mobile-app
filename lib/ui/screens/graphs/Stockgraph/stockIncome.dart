import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:et_bank/global/constants/colors.dart';

class InomeGraphannually extends StatefulWidget {
  InomeGraphannually({Key? key}) : super(key: key);

  @override
  _InomeGraphannuallyState createState() => _InomeGraphannuallyState();
}

class _InomeGraphannuallyState extends State<InomeGraphannually> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData(2018, 6, 2),
      _ChartData(2019, 8, 2),
      _ChartData(2020, 15, 4),
      _ChartData(2021, 20, 6), 
      _ChartData(2022, 28, 8),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Profit margin:",
                style: MyTextStyles.workfont(
                    fontsize: 12.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "15.45%",
                style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            height: 200.h,
            child: Row(
              children: [
                Container(
                  width: 280.w,
                  child: SfCartesianChart(
                    plotAreaBorderColor: AppColors.greyBox,
                    borderWidth: 0,
                    backgroundColor: AppColors.greyBox,
                    borderColor: Colors.transparent,
                    primaryXAxis: CategoryAxis(
                      axisLine: AxisLine(
                          color: AppColors.greenText,
                          width: 0.5,
                          dashArray: <double>[5, 5]),
                      majorGridLines: MajorGridLines(width: 0),
                      // minorGridLines: MinorGridLines(width: 0),
                      majorTickLines: MajorTickLines(size: 0),
                      // minorTickLines: MinorTickLines(size: 0),
                      labelPosition: ChartDataLabelPosition.outside,
                      labelStyle: TextStyle(
                        color: AppColors.greenText,
                      ),
                      labelIntersectAction:
                          AxisLabelIntersectAction.multipleRows,
                    ),
                    primaryYAxis: NumericAxis(
                      majorTickLines: MajorTickLines(size: 0),
                      minorTickLines: MinorTickLines(size: 0),

                      borderColor: AppColors.greyBox,
                      majorGridLines: MajorGridLines(
                          width: 0), // Set major grid lines to null
                      minorGridLines: MinorGridLines(width: 0),
                      axisLine: AxisLine(width: 0),

                      isVisible: false,
                    ),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<_ChartData, int>>[
                      ColumnSeries<_ChartData, int>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) =>
                            data.y1.toInt(), // Convert to int
                        name: 'Gold',
                        color: AppColors.greenText,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.r),
                            topRight: Radius.circular(5.r)),
                        spacing: 0.01,
                      ),
                      ColumnSeries<_ChartData, int>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) =>
                            data.y2.toInt(), // Convert to int
                        name: 'Silver', // Change series name to 'Silver'
                        color: AppColors.yellowButton,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.r),
                            topRight: Radius.circular(
                                5.r)), // Change color for 'Silver'
                        spacing: 0.01,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.w, horizontal: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "81.46B",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "54.3B",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "27.15B",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "0.0",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 30.h,
          // ),
           Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: AppColors.greenText,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Revenue",
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "\$81.46B",
                    style: MyTextStyles.workfont(
                        fontsize: 12.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: 30.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: AppColors.yellowButton,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Net income",
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "\$81.46B",
                    style: MyTextStyles.workfont(
                        fontsize: 12.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y1, this.y2);
  final int x;
  final double y1;
  final double y2;
}

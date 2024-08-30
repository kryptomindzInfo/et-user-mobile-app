import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:et_bank/global/constants/colors.dart';

class InomeGraphquaterlly extends StatefulWidget {
  InomeGraphquaterlly({Key? key}) : super(key: key);

  @override
  _InomeGraphquaterllyState createState() => _InomeGraphquaterllyState();
}

class _InomeGraphquaterllyState extends State<InomeGraphquaterlly> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData("Q1’22", 6, 2),
      _ChartData("Q2’22", 8, 2),
      _ChartData("Q3’22", 15, 4),
      _ChartData("Q4’22", 20, 6), // Change y1 and y2 values to integers
      _ChartData("Q1’22", 28, 8),
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
                "10.45%",
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
                        color: AppColors.greyText2,
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
                    series: <CartesianSeries<_ChartData, String>>[
                      ColumnSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y1.toInt(),
                        name: 'Gold',
                        color: AppColors.greenText,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.r),
                            topRight: Radius.circular(5.r)),
                        spacing: 0.01,
                      ),
                      ColumnSeries<_ChartData, String>(
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
                        "24.31B",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "16.21B",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "8.1B",
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
                    "\$23.32B",
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
                    "\$2.51B",
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
  final String x;
  final double y1;
  final double y2;
}

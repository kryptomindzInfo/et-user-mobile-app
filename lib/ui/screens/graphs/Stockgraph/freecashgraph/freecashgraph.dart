import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/freecashgraph/Data/freecashdata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class freecashgraph extends StatefulWidget {
  freecashgraph({Key? key}) : super(key: key);

  @override
  _freecashgraphState createState() => _freecashgraphState();
}

class _freecashgraphState extends State<freecashgraph> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Fresh cash flow:",
                style: MyTextStyles.workfont(
                    fontsize: 12.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "\$7.45%",
                style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 200.h,
            child: Row(
              children: [
                Container(
                  width: 280.w,
                  child: BarChart(
                    BarChartData(
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: FlGridData(
                        show: false,
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      backgroundColor: AppColors.greyBox,
                      maxY: 30,
                      minY: -20,
                      groupsSpace: calculateSpacing(BarData.data),
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: 0,
                            color: AppColors.greenText,
                            strokeWidth: 2,
                            dashArray: [5, 5], // To make it dotted
                          ),
                        ],
                      ),
                      barGroups: BarData.data
                          .map(
                            (data) => BarChartGroupData(
                              x: data.id,
                              barRods: [
                                BarChartRodData(
                                  width: 18.w,
                                  color: data.color,
                                  borderRadius: data.y > 0
                                      ? BorderRadius.only(
                                          topLeft: Radius.circular(5.r),
                                          topRight: Radius.circular(5.r),
                                        )
                                      : BorderRadius.only(
                                          bottomLeft: Radius.circular(5.r),
                                          bottomRight: Radius.circular(5.r),
                                        ),
                                  toY: data.y,
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.w, horizontal: 2.w),
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
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    "Operating",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Investing",
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "-\$11.46B",
                    style: MyTextStyles.workfont(
                        fontsize: 12.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Financing",
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "-\$3.46B",
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






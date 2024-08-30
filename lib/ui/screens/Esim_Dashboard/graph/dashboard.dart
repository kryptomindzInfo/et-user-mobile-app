import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/Esim_Dashboard/graph/widget/esimdashboard_bottomtileswidget.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        children: [

           Positioned(
            top: 30,
            left: 40,
            child: Text(
              '69.5 MB Usage',
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.accountSubTitle,
                  fontWeight: FontWeight.w400),
            ),
          ),
           Positioned(
            bottom: 35,
            
        
            child:Container(
              width: 335.5.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            )
          ),
          LineChart(
            LineChartData(
              gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  drawHorizontalLine: false),
              borderData: FlBorderData(
                show: false,
                border: Border.all(color: const Color(0xff37434d), width: 1),
              ),
        
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
                
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 50,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets,
                    
                  ),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 0.5),
                    FlSpot(1, 0.5),
                    FlSpot(1, 1),
                    FlSpot(2.7, 1),
                    FlSpot(2.7, 1.5),
                    FlSpot(5, 1.5),
                  ],
                  isStrokeJoinRound: true,
                  isStrokeCapRound: true,
                  isCurved: false,
                  color: AppColors.primary,
                  barWidth: 3,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0),
                        Color.fromRGBO(61, 254, 76, 0.22),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  dotData: FlDotData(show: false),
                ),
              ],
            ),
          ),
         
        ],
      );
}

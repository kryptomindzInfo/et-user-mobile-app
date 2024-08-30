import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  TextStyle style = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.white,
  );
  return SideTitleWidget(
    fitInside: SideTitleFitInsideData(
        enabled: false,
        axisPosition: 0,
        parentAxisSize: 0,
        distanceFromEdge: 0),
    axisSide: meta.axisSide,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
      child: Text('${(value + value).toInt()}', style: style),
    ),
  );
}

import 'package:et_bank/controllers/Analytics_Controller/analyticflowcontroller.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:et_bank/global/constants/colors.dart';

class AnalyticsExpenseGraph extends StatefulWidget {
  AnalyticsExpenseGraph({Key? key}) : super(key: key);

  @override
  _AnalyticsExpenseGraphState createState() => _AnalyticsExpenseGraphState();
}

class _AnalyticsExpenseGraphState extends State<AnalyticsExpenseGraph> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  final AnalyticsController Controller = Get.put(AnalyticsController());
  @override
  void initState() {
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      child: Row(
        children: [
          Obx(() {
            return Container(
              width: 280.w,
              child: SfCartesianChart(
                plotAreaBorderColor: Colors.transparent,
                borderWidth: 0,
                // backgroundColor: AppColors.buttongrey,
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
                    color: AppColors.grey,
                  ),
                  labelIntersectAction: AxisLabelIntersectAction.multipleRows,
                ),
                primaryYAxis: NumericAxis(
                  majorTickLines: MajorTickLines(size: 0),
                  minorTickLines: MinorTickLines(size: 0),

                  borderColor: AppColors.greyBox,
                  majorGridLines:
                      MajorGridLines(width: 0), // Set major grid lines to null
                  minorGridLines: MinorGridLines(width: 0),
                  axisLine: AxisLine(width: 0),

                  isVisible: false,
                ),
                tooltipBehavior: _tooltip,
                series: <CartesianSeries<_ChartData, String>>[
                  ColumnSeries<_ChartData, String>(
                    dataSource: [
                      _ChartData(
                          Controller.selectedIndexanadays.value == 0
                              ? "Ist y"
                              : Controller.selectedIndexanadays.value == 1
                                  ? "Jan"
                                  : Controller.selectedIndexanadays.value == 2
                                      ? 'Ist w'
                                      : 'Ist day',
                          2),
                      _ChartData(
                          Controller.selectedIndexanadays.value == 0
                              ? "2nd y"
                              : Controller.selectedIndexanadays.value == 1
                                  ? "Feb"
                                  : Controller.selectedIndexanadays.value == 2
                                      ? '2nd w'
                                      : '2nd day',
                          2),
                      _ChartData(
                          Controller.selectedIndexanadays.value == 0
                              ? "3rd y"
                              : Controller.selectedIndexanadays.value == 1
                                  ? "Mar"
                                  : Controller.selectedIndexanadays.value == 2
                                      ? '3rd w'
                                      : '3rd day',
                          4),
                      _ChartData(
                          Controller.selectedIndexanadays.value == 0
                              ? "4th y"
                              : Controller.selectedIndexanadays.value == 1
                                  ? "April"
                                  : Controller.selectedIndexanadays.value == 2
                                      ? '4th w'
                                      : '4th day',
                          6),
                      _ChartData(
                          Controller.selectedIndexanadays.value == 0
                              ? "5th y"
                              : Controller.selectedIndexanadays.value == 1
                                  ? "May"
                                  : Controller.selectedIndexanadays.value == 2
                                      ? '5th w'
                                      : '5th day',
                          8),
                    ],
                    width: 0.3,
                    xValueMapper: (_ChartData data, _) => data.x,
                    yValueMapper: (_ChartData data, _) => data.y2.toInt(),
                    name: 'Silver',
                    color: AppColors.yellowButton2,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight:
                            Radius.circular(5.r)), // Change color for 'Silver'
                    spacing: 0.01,
                  ),
                ],
              ),
            );
          }),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$1000",
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$500",
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$250",
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$1000",
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y2);
  final String x;

  final double y2;
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/graphs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SecondGraph extends StatefulWidget {
  const SecondGraph({super.key});

  @override
  State<SecondGraph> createState() => _SecondGraphState();
}

class _SecondGraphState extends State<SecondGraph> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 180.h,
            color: AppColors.buttongrey,
            //Initialize spark line chart
            child: SfSparkLineChart(
              lastPointColor: Colors.white,
              marker: SparkChartMarker(
                  size: 10, displayMode: SparkChartMarkerDisplayMode.last),
              color: AppColors.yellow,
              axisLineWidth: 1,
              axisLineDashArray: [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6],
              trackball: SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap,
                borderWidth: 0, // Set trackball border width to 0 to hide it
                shouldAlwaysShow: false,
              ),
              axisLineColor: AppColors.graphaxis,
              data: GraphsData().cryptoBuyCollectionGraphData,
            ),
          ),
        ),
      ],
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}

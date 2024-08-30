import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/graphs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class BuyCollectionGraph extends StatefulWidget {
  const BuyCollectionGraph({super.key});

  @override
  State<BuyCollectionGraph> createState() => _BuyCollectionGraphState();
}

class _BuyCollectionGraphState extends State<BuyCollectionGraph> {
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
            color: AppColors.greyBox,
            //Initialize spark line chart
            child: SfSparkLineChart(
              lastPointColor: AppColors.white,
              marker: SparkChartMarker(
                  size: 10, displayMode: SparkChartMarkerDisplayMode.last),
              color: AppColors.greenText,
              axisLineWidth: 1,
              axisLineDashArray: [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6],
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

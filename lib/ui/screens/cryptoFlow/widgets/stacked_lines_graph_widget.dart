import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/graphs_list.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class StackedLinesGraphWidget extends StatefulWidget {

  const StackedLinesGraphWidget({super.key});

  @override
  State<StackedLinesGraphWidget> createState() => _StackedLinesGraphWidgetState();
}

class _StackedLinesGraphWidgetState extends State<StackedLinesGraphWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return
       Center(
        child: SfCartesianChart(
          annotations: <CartesianChartAnnotation>[
        
          ],
          primaryXAxis: NumericAxis(
            isVisible: true,
            labelStyle: TextStyle(color: AppColors.buttongrey),
            majorGridLines: MajorGridLines(width: 0),
            minorGridLines: MinorGridLines(width: 0),
            majorTickLines: MajorTickLines(size: 0),
            minorTickLines: MinorTickLines(size: 0),
            axisLine: AxisLine(
              color: AppColors.greenText,
              width: 0.5,
              dashArray: <double>[5, 5],
            ),
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
            
          ),
          plotAreaBorderColor: AppColors.greyBox,
          plotAreaBackgroundColor: AppColors.greyBox,
          plotAreaBorderWidth: 0,
          backgroundColor: AppColors.greyBox,
          borderColor: AppColors.greyBox,
          series: <CartesianSeries>[
            // Renders line chart
            LineSeries<ChartData, int>(
        
            
                color:AppColors.yellowButton,
                dataSource: GraphsData().stackedLineChartData1,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y),
            LineSeries<ChartData, int>(
                color: AppColors.greenText,
                dataSource: GraphsData().stackedLineChartData2,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y),
          ],
        ),
      );
   
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}

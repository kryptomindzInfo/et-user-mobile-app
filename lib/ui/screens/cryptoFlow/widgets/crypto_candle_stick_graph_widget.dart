import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/graphs_list.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CandleStickGraph extends StatefulWidget {
  CandleStickGraph({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CandleStickGraph> {
  final ThemeController themeController = Get.put(ThemeController());
  late List<ChartSampleData> _chartData;
  late TrackballBehavior _trackballBehavior;

  @override
  void initState() {
    _chartData = GraphsData().getChartData();
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
      plotAreaBorderWidth: 0,
      backgroundColor: AppColors.greyBox,
      // title: ChartTitle(text: 'AAPL - 2016'),
      legend: Legend(isVisible: true),
      trackballBehavior: _trackballBehavior,
      series: <CandleSeries>[
        CandleSeries<ChartSampleData, DateTime>(
            borderWidth: 4,
            bearColor: AppColors.yellowButton,
            bullColor: AppColors.greenText,
            isVisibleInLegend: false,
            dataSource: _chartData,
            // name: 'AAPL',
            xValueMapper: (ChartSampleData sales, _) => sales.x,
            lowValueMapper: (ChartSampleData sales, _) => sales.low,
            highValueMapper: (ChartSampleData sales, _) => sales.high,
            openValueMapper: (ChartSampleData sales, _) => sales.open,
            closeValueMapper: (ChartSampleData sales, _) => sales.close)
      ],
      primaryXAxis: DateTimeAxis(
          isVisible: false,
          dateFormat: DateFormat.MMM(),
          majorGridLines: MajorGridLines(width: 0)),
      primaryYAxis: NumericAxis(
          isVisible: false,
          minimum: 90,
          maximum: 120,
          interval: 10,
          numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
    ));
  }
}

class ChartSampleData {
  ChartSampleData({
    this.x,
    this.open,
    this.close,
    this.low,
    this.high,
  });

  final DateTime? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}

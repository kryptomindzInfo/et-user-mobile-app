import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatelessWidget {
  const RadialGauge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use ScreenUtil for responsive design


    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity, // Take up full width
          height: 200,// Set the desired height using ScreenUtil
          color: AppColors.buttongrey,
          child: Center(
            child: SfRadialGauge(
              backgroundColor: AppColors.buttongrey,
              axes: <RadialAxis>[
                
                RadialAxis(
                  isInversed: false,
                  showFirstLabel: false,
                  showAxisLine: false,
                  showLastLabel: false,
                  showLabels: false,
                  showTicks: false,
                  startAngle: 180,
                  endAngle: 360,
                  minimum: 0,
                  maximum: 150,
                  
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 75,
                      color: Colors.green,
                      startWidth: 8,
                      endWidth: 8,
                    ),
                    GaugeRange(
                      startValue: 75,
                      endValue: 160,
                      color: AppColors.grey,
                      startWidth: 8,
                      endWidth: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

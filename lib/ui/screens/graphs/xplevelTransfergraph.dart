import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:et_bank/global/constants/colors.dart';

class RadialGauge extends StatelessWidget {
  const RadialGauge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              isInversed: false,
              showFirstLabel: false,
              showAxisLine: false,
              showLastLabel: false,
              showLabels: false,
              showTicks: false,
              startAngle: 180,
              endAngle: 0,
              minimum: 0,
              maximum: 150,
              radiusFactor: 1.0,
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
                  endValue: 190,
                  color: AppColors.grey,
                  startWidth: 8,
                  endWidth: 8,
                ),
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  positionFactor: 0,
                  widget: Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                MyText.xp,
                                style: MyTextStyles.sorafont(
                                    fontsize: 10.sp,
                                    color: AppColors.primaryText,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                               "05     Transfer",
                                style: MyTextStyles.sorafont(
                                    fontsize: 5.sp,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Today",
                                style: MyTextStyles.sorafont(
                                    fontsize: 5.sp,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                MyText.addedfiftytoday,
                                textAlign: TextAlign.center,
                                style: MyTextStyles.sorafont(
                                    fontsize: 5.sp,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
        ],
      ),
    );
  }
}

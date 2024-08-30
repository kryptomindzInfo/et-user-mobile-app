import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DailyRadialGauge extends StatelessWidget {
   DailyRadialGauge({Key? key}) : super(key: key);
final double startValue=0;
final double endValue=20;
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
                endValue: 20,
                           color:Color.fromRGBO(255, 0, 0, 1),
                startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 21,
                endValue: 41,
                    color:Color.fromRGBO(255, 122, 0, 1),
                 startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 42,
                endValue: 62,
                   color:Color.fromRGBO(255, 199, 0, 1),
                  startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 63,
                endValue: 83,
              color:Color.fromRGBO(255, 229, 0, 1),
                  startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 84,
                endValue: 104,
                color:Color.fromRGBO(189, 255, 0, 1),
                 startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 105,
                endValue: 125,
          color: AppColors.grey,
                startWidth: 6,
                endWidth: 6,
              ),
              GaugeRange(
                startValue: 126,
                endValue: 150,
                color: AppColors.grey,
                 startWidth: 6,
                endWidth: 6,
              )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  positionFactor: 0,
                  widget: Container(
                    child: Stack(
             
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
                                "05     Days",
                                style: MyTextStyles.sorafont(
                                    fontsize: 5.sp,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Streak",
                                style: MyTextStyles.sorafont(
                                    fontsize: 5.sp,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Added     50    XP    points\nsince    08/11/2023",
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

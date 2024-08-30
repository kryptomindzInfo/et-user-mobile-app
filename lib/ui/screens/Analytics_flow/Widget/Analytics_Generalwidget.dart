import 'package:et_bank/controllers/Analytics_Controller/analyticflowcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/graphs/Analytics/Analytic_generalgraph.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Analyticgeneral extends StatefulWidget {
  Color? color;
  Color? color2;
  Analyticgeneral({super.key, this.color, this.color2});

  @override
  State<Analyticgeneral> createState() => _AnalyticgeneralState();
}

class _AnalyticgeneralState extends State<Analyticgeneral> {
  final AnalyticsController Controller = Get.put(AnalyticsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 349.w,
          decoration: BoxDecoration(
            color: widget.color ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: Column(children: [
              Container(
                width: 316.w,
                height: 39.h,
                decoration: BoxDecoration(
                    color: widget.color2 ?? AppColors.analyticsBox,
                    borderRadius: BorderRadius.circular(28.r)),
                child: GetBuilder<AnalyticsController>(builder: (Controller) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: ListView.builder(
                      itemCount: Controller.Analyticsdays.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Controller.selectItemanadays(index);
                          },
                          child: Container(
                            height: 23.h,
                            margin: EdgeInsets.only(top: 7.h, bottom: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  Controller.getPageIndicatorColorAnadaysblack(
                                      index),
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                              child: Text(
                                Controller.Analyticsdays[index],
                                style: MyTextStyles.worknormal(
                                    fontsize: 16.sp,
                                    color: Controller.getItemTextColoranaday(
                                        index)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 160.h,
                child: AnalyticsGeneralGraph(),
              ),
              Row(children: [
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.greenText,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17.h),
                  child: Text(
                    "Income\n\$990",
                    style: MyTextStyles.workfont(
                        fontsize: 12.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.yellow,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17.h),
                  child: Text(
                    "Expense\n\$240",
                    style: MyTextStyles.workfont(
                        fontsize: 12.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ])
            ]),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "May history",
          style: MyTextStyles.sora(
            fontsize: 16.sp,
            color: AppColors.primaryText,
          ),
        ),
        Container(
            width: 349.w,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Netflix",
                    subtitle: "14 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.red,
                    costType: "Subscription",
                    costTypeColor: AppColors.greyText2,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Adward Toney",
                    subtitle: "13 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.greenText,
                    costType: "payment received",
                    costTypeColor: AppColors.greyText2,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Figma",
                    subtitle: "12 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.red,
                    costType: "Subscription",
                    costTypeColor: AppColors.greyText2,
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "April history",
          style: MyTextStyles.sora(fontsize: 16.sp, color: AppColors.primaryText),
        ),
        Container(
            width: 349.w,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Netflix",
                    subtitle: "14 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.red,
                    costType: "Subscription",
                    costTypeColor: AppColors.greyText2,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Adward Toney",
                    subtitle: "13 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.greenText,
                    costType: "payment received",
                    costTypeColor: AppColors.greyText2,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Transaction(
                    imageAsset: AppAssets.Green,
                    width: 43.w,
                    height: 43.h,
                    title: "Figma",
                    subtitle: "12 May 20203",
                    titleColor: AppColors.primaryText,
                    subtitleColor: AppColors.greyText2,
                    cost: "-£3.9",
                    costColor: AppColors.red,
                    costType: "Subscription",
                    costTypeColor: AppColors.greyText2,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

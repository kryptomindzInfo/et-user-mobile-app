import 'package:et_bank/controllers/Analytics_Controller/analyticflowcontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Analytics_flow/Widget/Analytic_expenses.dart';
import 'package:et_bank/ui/screens/Analytics_flow/Widget/Analytic_income.dart';
import 'package:et_bank/ui/screens/Analytics_flow/Widget/Analytics_Generalwidget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class Analytics extends StatefulWidget {
  Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                AppAssets.leftarrow,
                width: 25.12.w,
                height: 17.94.h,
                color: AppColors.primaryText,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Analytics",
            style: MyTextStyles.sora5(
              fontsize: 16.sp,
              color: AppColors.primaryText,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Image.asset(
                AppAssets.notifi,
                width: 19.44.w,
                height: 25.27.h,
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(
                hintText: "Home",

              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 39.h,
                child: GetBuilder<AnalyticsController>(builder: (Controller) {
                  return ListView.builder(
                    itemCount: Controller.Analytics.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: GestureDetector(
                          onTap: () {
                            Controller.selectItemana(index);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 39.h,
                            decoration: BoxDecoration(
                              color: Controller.getPageIndicatorColorAna(index),
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                              child: Text(
                                Controller.Analytics[index],
                                style: MyTextStyles.worknormal(
                                  fontsize: 16.sp,
                                  color: Controller.getItemTextColorana(index),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView(children: [
                  GetBuilder<AnalyticsController>(
                    builder: (Controller) {
                      switch (Controller.selectedIndexana.value) {
                        case 0:
                          return Analyticgeneral(
                            color: AppColors.greyBox,
                            color2: AppColors.inActiveTabButtons3,
                          );
                        case 1:
                          return Analyticexpenses(
                            color: AppColors.greyBox,
                            color2: AppColors.inActiveTabButtons3,
                          );
                        case 2:
                          return Analyticincome(
                            color: AppColors.greyBox,
                            color2: AppColors.inActiveTabButtons3,
                          );

                        default:
                          return Container();
                      }
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

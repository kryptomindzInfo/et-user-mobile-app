import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Telemardradeem extends StatefulWidget {
  Telemardradeem({super.key});

  @override
  State<Telemardradeem> createState() => _TelemardradeemState();
}

class _TelemardradeemState extends State<Telemardradeem> {
  final ListController controller = Get.put(ListController());

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
            "Recent Redeemed",
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
              SearchBarWidget(),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 349.w,
                height: 169.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.telemart,
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.telemartonl,
                                style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.primaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                MyText.fifpoints,
                                style: MyTextStyles.workfont(
                                    fontsize: 12.sp,
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.telemart,
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.telemartonl,
                                style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.primaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                MyText.fifpoints,
                                style: MyTextStyles.workfont(
                                    fontsize: 12.sp,
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.telemart,
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.telemartonl,
                                style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.primaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                MyText.fifpoints,
                                style: MyTextStyles.workfont(
                                    fontsize: 12.sp,
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

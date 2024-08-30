import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Esim_Dashboard/Esim_datausage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Esimdashboardoverveiw extends StatefulWidget {
  const Esimdashboardoverveiw({super.key});

  @override
  State<Esimdashboardoverveiw> createState() => _EsimdashboardoverveiwState();
}

class _EsimdashboardoverveiwState extends State<Esimdashboardoverveiw> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                AppAssets.leftarrow,
                color: AppColors.primaryText,
              ),
            ),
          ),
          title: Text(
            "E-Sim",
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Over view",
                style: MyTextStyles.sorafont(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                // height: 328.h,
                width: 349.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.r),
                  color: AppColors.greyBox,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "E-sim Status",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Active",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Network",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "4G",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Signal strength",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Full",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Current data plan",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "10\$",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(Esimdatausage());
                },
                child: Container(
                  width: 349.w,
                  height: 94.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.esimdatausage),
                        SizedBox(
                          width: 40.h,
                        ),
                        Text(
                          "Data Usage Analytics",
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

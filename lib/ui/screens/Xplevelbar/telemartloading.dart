import 'package:et_bank/controllers/loadingcontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void Telemartloading(BuildContext context) {
  LoadingController loadingController = Get.put(LoadingController());
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: 40.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32.r)),
          height: 316.h,
          width: 351.w,
          child: Obx(() {
            return Container(
              child: loadingController.isLoading.value
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 104.w,
                          height: 104.w,
                          child: CircularProgressIndicator(
                            color: AppColors.greenText,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: Text(
                            MyText.yourtelemartonlin,
                            textAlign: TextAlign.center,
                            style: MyTextStyles.workfont(
                                fontsize: 18.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  : InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 104.w,
                            height: 104.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.primary, width: 2.w)),
                            child: Center(
                              child: Image.asset(
                                AppAssets.thickimage,
                                width: 48.w,
                                height: 35.5.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Center(
                            child: Text(
                              MyText.yourtelemarsuccess,
                              textAlign: TextAlign.center,
                              style: MyTextStyles.workfont(
                                  fontsize: 18.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
            );
          }),
        ),
      );
    },
  );
  Future.delayed(Duration(seconds: 3), () {
    loadingController.stopLoading();
  });
}

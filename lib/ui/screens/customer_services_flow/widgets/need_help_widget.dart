import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/customer_services_flow/customerservices_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class NeedHelpWidget extends StatefulWidget {
  @override
  State<NeedHelpWidget> createState() => _NeedHelpWidgetState();
}

class _NeedHelpWidgetState extends State<NeedHelpWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.greyBox2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 349.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
              color: AppColors.greyBox2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greenText,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21.r),
                      topRight: Radius.circular(21.r),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.close,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 140.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.Needhelpwithsomething,
                                style: MyTextStyles.sora(
                                  fontsize: 32.sp,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Container(
                          width: 210.w,
                          child: Text(
                            MyText.Reachouttooursupportteam,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText3,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(CustomerServicesWelcome());
                          },
                          child: Container(
                            width: 82.w,
                            height: 39.h,
                            decoration: BoxDecoration(
                              color: AppColors.yellowButton,
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                                child: Text(
                              MyText.linkstart,
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.blackText,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class basictravel extends StatefulWidget {
  basictravel({super.key});

  @override
  State<basictravel> createState() => _basictravelState();
}

class _basictravelState extends State<basictravel> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    )),
              ],
            ),
          ),
          title: Text(
            MyText.bsictravel,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350.w,
                height: 130.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    image: DecorationImage(
                        image: AssetImage(
                          AppAssets.basictravel,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Text(
                  MyText.covaragein,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.w, top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 2, // Adjust the radius as needed
                          backgroundColor: AppColors.greyText2, // Color of the dot
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          MyText.Medicalexpense,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 2, // Adjust the radius as needed
                          backgroundColor: AppColors.greyText2, // Color of the dot
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          MyText.tripcan,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 2, // Adjust the radius as needed
                          backgroundColor: AppColors.greyText2, // Color of the dot
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          MyText.tripinterup,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 2, // Adjust the radius as needed
                          backgroundColor: AppColors.greyText2, // Color of the dot
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          MyText.baggage,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 20.h),
                child: Text(
                  MyText.AnnualLimit,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.w, top: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2, // Adjust the radius as needed
                            backgroundColor: AppColors.greyText2, // Color of the dot
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            MyText.emergencyass,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2, // Adjust the radius as needed
                            backgroundColor: AppColors.greyText2, // Color of the dot
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            MyText.Lostor,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: AppColors.greyText2,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            MyText.emergencyevac,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 20.h),
                child: Text(
                  "Price",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.w, top: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: AppColors.greyText2,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            MyText.strtfrom,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            MyText.pertrip,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greenText,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 110.h,
              ),
              Center(
                child: btn(
                  cardText: MyText.getbasictra,
                  cardWidth: 327.w,
                  cardHeight: 48.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

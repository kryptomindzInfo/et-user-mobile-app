import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/widget/w8binloading.dart';
import 'package:et_bank/ui/screens/stock/widget/w8whiteinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class W8ben extends StatefulWidget {
  const W8ben({super.key});

  @override
  State<W8ben> createState() => _W8benState();
}

class _W8benState extends State<W8ben> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  children: [
                    GestureDetector(
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
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "W-8 BEN",
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyText.stockcertify,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        InformationWidget(
                          title: MyText.name,
                          information: 'Alina Jamaes',
                        ),
                        InformationWidget(
                          title: 'Country of residence',
                          information: 'United Kingdom',
                        ),
                        InformationWidget(
                          title: 'TIN',
                          information: 'DS123456C',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 349.w,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 25.h),
                            child: Text(
                              MyText.stockwbincertify,
                              style: MyTextStyles.workfont(
                                  fontsize: 14.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Read More",
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greenText,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 350.w,
                          height: 61.h,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Legal Name",
                                  style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 220.w,
                                  height: 20.h,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 13.h),
                                      hintText: "Alina James",
                                      hintStyle: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Please sign in with Alina James",
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: Text(
                        "Continue",
                        style: TextStyle(
                            color: themeController.bgColor.value,
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        w8binBottomSheet(context);
                      }),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

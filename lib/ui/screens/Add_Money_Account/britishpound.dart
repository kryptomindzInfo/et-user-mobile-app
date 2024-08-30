import 'package:et_bank/controllers/accountFlow/account_details_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account/widgets/beneficiary_card_widget.dart';
import 'package:et_bank/ui/screens/account/widgets/detail_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class BritishPound extends StatefulWidget {
  BritishPound({super.key});

  @override
  State<BritishPound> createState() => _BritishPoundState();
}

class _BritishPoundState extends State<BritishPound> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsController accountDetailsController =
      Get.put(AccountDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Obx(() {
        return Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r)),
              color: AppColors.blackBox,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        InkWell(
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
                          width: 80,
                        ),
                        Text(
                          MyText.bpound,
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.w),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            MyText.useraccdetail,
                            textAlign: TextAlign.center,
                            style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.inActiveTabButtons2,
                          borderRadius: BorderRadius.circular(48)),
                      height: 43.h,
                      width: 349.w,
                      child: Row(
                        children: [
                          Container(
                            height: 43.h,
                            width: 175.w,
                            child: ButtonWidget(
                                color: accountDetailsController
                                    .getLocalButtonColor(),
                                text: Text(
                                  MyText.local,
                                  style: TextStyle(
                                      color: accountDetailsController
                                          .getLocalButtonTextColor(),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Work Sans'),
                                ),
                                onPressed: () {
                                  accountDetailsController.setLocalValue(true);
                                }),
                          ),
                          Container(
                            height: 43.h,
                            width: 173.w,
                            child: ButtonWidget(
                                color: accountDetailsController
                                    .getSwiftButtonColor(),
                                text: Text(
                                  MyText.swift,
                                  style: TextStyle(
                                      color: accountDetailsController
                                          .getSwiftButtonTextColor(),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                                onPressed: () {
                                  accountDetailsController.setLocalValue(false);
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.domesticTransfer,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.share,
                            style: TextStyle(
                                color: AppColors.greenText,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    BeneficiaryCardWidget(),
                    SizedBox(
                      height: 16.h,
                    ),
                    accountDetailsController.local == true
                        ? DetailCardWidget(
                            text1: MyText.detailCardText1,
                            text2: MyText.detailCardText2,
                            text3: MyText.detailCardText3,
                            text4: MyText.detailCardText4,
                          )
                        : DetailCardWidget(
                            text1: MyText.detailCardText1,
                            text2: MyText.switftDetailCardText2,
                            text3: MyText.switftDetailCardText3,
                            text4: MyText.switftDetailCardText4,
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      })),
    );
  }
}

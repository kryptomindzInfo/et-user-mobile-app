import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ChildHomeRecentTransactionWidget extends StatefulWidget {
  const ChildHomeRecentTransactionWidget({super.key});

  @override
  State<ChildHomeRecentTransactionWidget> createState() => _ChildHomeRecentTransactionWidgetState();
}

class _ChildHomeRecentTransactionWidgetState extends State<ChildHomeRecentTransactionWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        width: 350.w,
        decoration: BoxDecoration(
            color: AppColors.childDarkBlue,
            borderRadius: BorderRadius.circular(38)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(13, 13, 32, 10),
          child: Column(
            children: [
              // First Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.netflix,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.Netflix,
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Today 12:30pm',
                            style: TextStyle(
                                color: AppColors.accountSubTitle,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-£3.9',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        MyText.Subscription,
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),

              // Second Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.netflix,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.Netflix,
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Today 12:30pm',
                            style: TextStyle(
                                color: AppColors.accountSubTitle,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-£5.9',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),

              // Third Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.netflix,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.Netflix,
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Today 12:30pm',
                            style: TextStyle(
                                color: AppColors.accountSubTitle,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-£3.9',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        MyText.Subscription,
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

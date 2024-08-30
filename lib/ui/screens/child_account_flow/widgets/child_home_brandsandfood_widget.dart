import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_brands.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_charity.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_food.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class BrandsAndFoodWidget extends StatefulWidget {
  const BrandsAndFoodWidget({super.key});

  @override
  State<BrandsAndFoodWidget> createState() => _BrandsAndFoodWidgetState();
}

class _BrandsAndFoodWidgetState extends State<BrandsAndFoodWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(ChildBrands());
              },
              child: Container(
                width: 92.w,
                decoration: BoxDecoration(
                    color: AppColors.childDarkBlue,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.home_brand,
                        height: 36.h,
                        width: 36.w,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        MyText.Brands,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ChildFood());
              },
              child: Container(
                width: 92.w,
                decoration: BoxDecoration(
                    color: AppColors.childDarkBlue,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.home_food,
                        height: 36.h,
                        width: 36.w,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        MyText.Food,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ChildGame());
              },
              child: Container(
                width: 92.w,
                decoration: BoxDecoration(
                    color: AppColors.childDarkBlue,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.home_game,
                        height: 36.h,
                        width: 36.w,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        MyText.Games,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ChildCharity());
              },
              child: Container(
                // width: 92.w,
                decoration: BoxDecoration(
                    color: AppColors.childDarkBlue,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.home_charity,
                        height: 36.h,
                        width: 36.w,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        MyText.Charity,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

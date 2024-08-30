import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/shop/shop_NIke.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Popularshopwidget extends StatefulWidget {
  Popularshopwidget({super.key});

  @override
  State<Popularshopwidget> createState() => _PopularshopwidgetState();
}

class _PopularshopwidgetState extends State<Popularshopwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(children: [
            Container(
              width: 167.w,
              height: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.r),
                color: AppColors.greyBox,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21.r),
                            topRight: Radius.circular(21.r),
                          ),
                        ),
                      ),
                      Container(
                        height: 21.h,
                        color: AppColors.greyBox,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 58.h,
                    child: Container(
                      width: 42.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                          border: Border.all(
                              width: 1.w, color: AppColors.blackColor)),
                    ),
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 30.h,
                    child: Text(
                      MyText.deliveroo,
                      style: MyTextStyles.sorafont(
                        fontsize: 14.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              width: 167.w,
              height: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.r),
                color: AppColors.greyBox,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(shopnike());
                        },
                        child: Container(
                          height: 110.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.yellowButton,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21.r),
                              topRight: Radius.circular(21.r),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 21.h,
                        color: AppColors.greyBox,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 58.h,
                    child: Container(
                      width: 42.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                          border: Border.all(
                              width: 1.w, color: AppColors.blackColor)),
                    ),
                  ),
                  Positioned(
                      left: 20.w,
                      bottom: 30.h,
                      child: Text(
                        MyText.ngc,
                        style: MyTextStyles.sorafont(
                            fontsize: 14.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              width: 167.w,
              height: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.r),
                color: AppColors.greyBox,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.yellowButton,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21.r),
                            topRight: Radius.circular(21.r),
                          ),
                        ),
                      ),
                      Container(
                        height: 21.h,
                        color: AppColors.greyBox,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 58.h,
                    child: Container(
                      width: 42.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                          border: Border.all(
                              width: 1.w, color: AppColors.blackColor)),
                    ),
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 30.h,
                    child: Text(
                      MyText.ngc,
                      style: MyTextStyles.sorafont(
                          fontsize: 14.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ]);
        },
      ),
    );
  }
}

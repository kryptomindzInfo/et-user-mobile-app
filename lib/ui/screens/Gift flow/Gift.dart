import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Gift%20flow/Widget/giftwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Gift extends StatefulWidget {
  Gift({super.key});

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeController.bgColor.value,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              AppAssets.leftarrow,
              width: 25.12.w,
              height: 17.94.h,
              color: AppColors.primaryText,
            )),
        title: Text(
          MyText.Gifts,
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              fontFamily: MyTextStyles.soraFamily),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 175.w,
                height: 39.h,
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(70.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.uploadkingdom,
                        width: 17.6.w, height: 16.h),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      MyText.uplokin,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.giveadigi,
                    style: MyTextStyles.sorafont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    MyText.seeal,
                    style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greenText,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              giftwidget(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                MyText.giveadigi,
                style: MyTextStyles.sorafont(
                    fontsize: 16.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Container(
                    width: 167.w,
                    height: 164.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(21.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 130, left: 10.w),
                      child: Text(
                        "Just Eat",
                        style: MyTextStyles.sorafont(
                            fontsize: 14.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 167.w,
                    height: 164.h,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(21.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 130, left: 10.w),
                      child: Text(
                        "Uber Gift Card",
                        style: MyTextStyles.sorafont(
                            fontsize: 14.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/shop/widget/featureshop.dart';
import 'package:et_bank/ui/screens/shop/widget/popularsopwidget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class shopallsaint extends StatefulWidget {
  shopallsaint({super.key});

  @override
  State<shopallsaint> createState() => _shopallsaintState();
}

class _shopallsaintState extends State<shopallsaint> {
  final ThemeController themeController = Get.put(ThemeController());

  final Listitems = [
    (
      text: 'Explore',
      imageUrl: AppAssets.shopexpl,
    ),
    (
      text: 'Cashback',
      imageUrl: AppAssets.shopcashbac,
    ),
    (text: 'How it works', imageUrl: AppAssets.shophow),
  ];

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
            MyText.shop,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                child: Column(
                  children: [
                    SearchBarWidget(
                      hintText: "Home",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 189.h,
                      decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 42.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.greyText2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 60.h),
                              child: Column(
                                children: [
                                  Text(
                                    MyText.AllSaint,
                                    style: MyTextStyles.sorafont(
                                        fontsize: 16.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    MyText.cashbacktwo,
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90.h,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Listitems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.w, vertical: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Listitems[index].imageUrl,
                                  ),
                                  Text(
                                    Listitems[index].text,
                                    style: MyTextStyles.sorafont(
                                        fontsize: 12.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Featureshop(),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Popup,
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
                    ),
                    Popularshopwidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.bestnbe,
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
                    ),
                    Popularshopwidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.bestnfas,
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
                    ),
                    Popularshopwidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.bestnspo,
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
                    ),
                    Popularshopwidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.bestnelec,
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
                    ),
                    Popularshopwidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.buysnea,
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
                    ),
                    Popularshopwidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

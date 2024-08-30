import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Gift%20flow/giftloading.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class Deliveroo extends StatefulWidget {
  const Deliveroo({super.key});

  @override
  State<Deliveroo> createState() => _DeliverooState();
}

class _DeliverooState extends State<Deliveroo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
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
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: MyText.DELi,
                            style: MyTextStyles.sora5(
                              fontsize: 26.sp,
                              color: AppColors.primaryText,
                            ),
                          ),
                          TextSpan(
                            text: MyText.foruk,
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 350.w,
                          height: 199.h,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: Center(
                              child: Image.asset(
                            AppAssets.Deliveroo,
                            width: 250.w,
                            height: 143.h,
                          )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          MyText.giveadigi,
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 349.w,
                          height: 399.h,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 8.h, right: 10.w),
                                  child: ListTile(
                                    leading: Image.asset(
                                      AppAssets.deliverooicon,
                                      width: 24.w,
                                      height: 24.h,
                                          color: AppColors.primaryText,

                                    ),
                                    title: Text(
                                      MyText.dgc,
                                      style: MyTextStyles.sorafont(
                                          fontsize: 16.sp,
                                          color: AppColors.primaryText,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    trailing: Text(
                                      "£0",
                                      style: MyTextStyles.sorafont(
                                          fontsize: 16.sp,
                                          color: AppColors.greyText2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          MyText.GiftDescription,
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 349.w,
                          height: 129.h,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  MyText.foodlove,
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.greyText2,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  MyText.Seemore,
                                  textAlign: TextAlign.start,
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.greenText,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          MyText.howtore,
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                            width: 349.w,
                            height: 129.h,
                            decoration: BoxDecoration(
                              color: AppColors.greenBox,
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        MyText.redeemyouregift,
                                        style: MyTextStyles.workfont(
                                            fontsize: 14.sp,
                                            color: AppColors.greyText2,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        MyText.Seemore,
                                        textAlign: TextAlign.start,
                                        style: MyTextStyles.workfont(
                                            fontsize: 14.sp,
                                            color: AppColors.greenText,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ]))),
                        SizedBox(
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              Text(
                                MyText.giftcardscan,
                                textAlign: TextAlign.center,
                                style: MyTextStyles.workfont(
                                    fontsize: 14.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                MyText.Seemore,
                                textAlign: TextAlign.start,
                                style: MyTextStyles.workfont(
                                    fontsize: 14.sp,
                                    color: AppColors.greenText,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                            child: GestureDetector(
                                onTap: () {
                                  giftloading(context);
                                },
                                child: btn(
                                    cardText: MyText.cOnfirmamou,
                                    cardWidth: 327.w,
                                    cardHeight: 48.h))),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

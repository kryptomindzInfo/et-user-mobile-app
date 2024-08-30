import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Featureshop extends StatefulWidget {
  Featureshop({super.key});

  @override
  State<Featureshop> createState() => _FeatureshopState();
}

class _FeatureshopState extends State<Featureshop> {
  final Listitems = [
    (text: MyText.Nvpn,),
    (text: MyText.Evpn,),
    (text: MyText.Easeus,),
    (text: MyText.oakley,),
  ];

  final Listitems2 = [
    (text: MyText.raybin,),
    (text: MyText.SunglassHut,),
    (text: MyText.Feell),
    (text: MyText.nameche),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MyText.featureshop,
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
        Container(
          width: double.infinity,
          height: 278.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 39.h),
            child: Column(
              children: [
                Container(
                  height: 100.h,
                  child: Container(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Listitems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 18.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 61.w,
                                height: 61.sp,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greyText2),
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
                Container(
                  height: 100.h,
                  child: Container(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Listitems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 18.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 61.w,
                                height: 61.sp,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greyText2),
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
              ],
            ),
          ),
        )
      ],
    );
  }
}

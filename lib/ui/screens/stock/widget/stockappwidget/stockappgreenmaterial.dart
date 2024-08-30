import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/homescreens/widget/circular_button.dart';
import 'package:et_bank/ui/screens/stock/stock_currency.dart';
import 'package:et_bank/ui/screens/stock/stock_withdraw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class stockappCustomDetails extends StatelessWidget {
  final List<Map<String, String>> items;

  stockappCustomDetails({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 52.h,
                  child: Row(
                    children: [
                      Text(
                        "£0",
                        style: MyTextStyles.sora5(
                          fontsize: 48.sp,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.h),
                        child: Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blackColor,
                          ),
                          child: Image.asset(AppAssets.vector),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "£0.0%",
                  style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Capital at risk",
                  style: MyTextStyles.sorafont(
                    fontsize: 12.sp,
                    color: AppColors.rgblack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Container(
            height: 80.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    stockcurrencyModalBottomSheet(context);
                  },
                  child: CircularButtonHome(
                    image: AppAssets.add,
                    text: MyText.addmoney,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(Bupgpb());
                  },
                  child: CircularButtonHome(
                    image: AppAssets.exchange,
                    text: MyText.exchange,
                  ),
                ),
                InkWell(
                  onTap: () {
                    stockwithdrawModalBottomSheet(context);
                  },
                  child: CircularButtonHome(
                    image: AppAssets.menu,
                    text: MyText.more,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            "Available to invest",
            style: MyTextStyles.workfont(
              fontsize: 12.sp,
              color: AppColors.greyBox,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ListTile(
          leading: Container(
              width: 42.w, height: 42.h, child: Image.asset(AppAssets.usimag)),
          title: Text(
            "USD",
            style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.rgblack,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            "Dollar",
            style: MyTextStyles.workfont(
              fontsize: 12.sp,
              color: AppColors.greyText2,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Text(
            "\$0.00",
            style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.rgblack,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/widget/stocknewrowwidget.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stocknews extends StatefulWidget {
  const Stocknews({super.key});

  @override
  State<Stocknews> createState() => _StocknewsState();
}

class _StocknewsState extends State<Stocknews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Yesterday",
          style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 351.w,
          height: 122.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.learbeats,
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      MyText.zackcomments,
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Image.asset(AppAssets.stocknewlear)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Yesterday",
          style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 351.w,
          height: 364.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
                Container(
                  width: 351.w,
                  height: 112.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: stocknewrowwidget(
                        firstText: MyText.learbeats,
                        secondText: MyText.zackcomments,
                        imagePath: AppAssets.stocknewpaper),
                  ),
                ),
                Container(
                  width: 351.w,
                  height: 112.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: stocknewrowwidget(
                        firstText: MyText.learbeats,
                        secondText: MyText.zackcomments,
                        imagePath: AppAssets.stocknewlap),
                  ),
                ),
                Container(
                  width: 351.w,
                  height: 112.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: stocknewrowwidget(
                        firstText: MyText.learbeats,
                        secondText: MyText.zackcomments,
                        imagePath: AppAssets.stocknewgraph),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(MyText.stockCAPITAL,
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
          child: Row(
            children: [
              CircularButton(
                  color: AppColors.primary, title: "+ Buy", onTap: () {}),
              SizedBox(
                width: 20.w,
              ),
              CircularButton(
                  color: AppColors.greyBox,
                  title: "- Sell",
                  onTap: () {
                    // Get.to(Passport());
                  })
            ],
          ),
        )
      ],
    );
  }
}

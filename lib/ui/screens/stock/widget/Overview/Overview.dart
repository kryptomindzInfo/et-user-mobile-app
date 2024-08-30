import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overviewwidget/Analyst.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overviewwidget/Morningstarwidget.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overviewwidget/Pricewidet.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overviewwidget/Researchwidget.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overviewwidget/statswidget.dart';
import 'package:et_bank/ui/screens/stock/widget/graph_widget.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 351.w,
          // height: 307.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Row(
            children: [
              Container(width: 350.w, child: GraphWidget()),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Text(
              "Stats",
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              MyText.seelall,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Statswidget(),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Text(
              MyText.PA,
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              MyText.seelall,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Pricewidget(),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Text(
              MyText.Mornresearch,
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              MyText.seelall,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Morningstarwidget(),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 351.w,
          height: 90.h,
          decoration: BoxDecoration(
            color: AppColors.greenBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.greenText,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      MyText.wanttoaccess,
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                    MyText.upgradeto,
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          MyText.Mornresearch,
          style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5.h,
        ),
        Morningresearch(),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Text(
              MyText.Analystprice,
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              MyText.seelall,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Analystwidget(),
        SizedBox(
          height: 20.h,
        ),
        Text(
          MyText.Abouttesla,
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
          height: 149.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                MyText.stockteslaInc,
                textAlign: TextAlign.center,
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See more.",
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greenText,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: 351.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Text(
                  MyText.wentwrong,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Image.asset(
                  AppAssets.rightarrow,
                  width: 17.w,
                  height: 8.h,
                  color: AppColors.primaryText,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyText.stockCAPITALis,
              style: MyTextStyles.workfont(
                  fontsize: 12.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              " View ",
              style: MyTextStyles.workfont(
                  fontsize: 12.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              MyText.tradingdisc,
              style: MyTextStyles.workfont(
                  fontsize: 12.sp,
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 60.h,
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
              GestureDetector(
                onTap: () {},
                child: CircularButton(
                    color: AppColors.greyBox, title: "- Sell", onTap: () {}),
              )
            ],
          ),
        )
      ],
    );
  }
}

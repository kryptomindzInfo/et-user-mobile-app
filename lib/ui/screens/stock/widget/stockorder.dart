import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class stockorder extends StatefulWidget {
  const stockorder({super.key});

  @override
  State<stockorder> createState() => _stockorderState();
}

class _stockorderState extends State<stockorder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 351.w,
          height: 173.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.stockorderimg,
                width: 64.w,
                height: 50.89.h,
              ),
              Text(
                MyText.yourorder,
                style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                MyText.pendingmark,
                textAlign: TextAlign.center,
                style: MyTextStyles.workfont(
                    fontsize: 12.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          MyText.pastperformance,
          textAlign: TextAlign.center,
          style: MyTextStyles.workfont(
              fontsize: 12.sp,
              color: AppColors.greyText2,
              fontWeight: FontWeight.w500),
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
          padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 30.w),
          child: Row(children: [
            CircularButton(
                color: AppColors.greenText, title: "+ Buy", onTap: () {}),
            SizedBox(
              width: 20.w,
            ),
            CircularButton(
                color: AppColors.greyBox,
                title: "- Sell",
                onTap: () {
                  // Get.to(Passport());
                }),
          ]),
        )
      ],
    );
  }
}

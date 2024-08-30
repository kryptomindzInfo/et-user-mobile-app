import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class stockTransaction extends StatefulWidget {
  const stockTransaction({super.key});

  @override
  State<stockTransaction> createState() => _stockTransactionState();
}

class _stockTransactionState extends State<stockTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 349.h,
          height: 88.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(32.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                Image.asset(AppAssets.Glyph),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  MyText.notrans,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          MyText.pastperformance,
          textAlign: TextAlign.center,
          style: MyTextStyles.workfont(
              fontsize: 12.sp,
              color: AppColors.greyText2,
              fontWeight: FontWeight.w400),
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
        SizedBox(
          height: 200.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
          child: Row(
            children: [
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
                  })
            ],
          ),
        )
      ],
    );
  }
}

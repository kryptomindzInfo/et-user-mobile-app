import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/Occupation.dart';
import 'package:et_bank/ui/screens/stock/widget/employestatusrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class Employmentstatus extends StatefulWidget {
  const Employmentstatus({super.key});

  @override
  State<Employmentstatus> createState() => _EmploymentstatusState();
}

class _EmploymentstatusState extends State<Employmentstatus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
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
                  Text(
                    MyText.EMP,
                    style: MyTextStyles.sora5(
                        fontsize: 26.sp, color: AppColors.primaryText,),
                  )
                ],
              ),
            ),
            Text(
              MyText.requiredto,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Occupation());
              },
              child: Container(
                width: 349.w,
                height: 262.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    children: [
                      TextRowWidget(
                        text: "Student",
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextRowWidget(
                        text: "Employed",
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextRowWidget(
                        text: "Unemployed",
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextRowWidget(
                        text: "Retired",
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextRowWidget(
                        text: MyText.selfempl,
                        imagePath: AppAssets.rightarrow,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

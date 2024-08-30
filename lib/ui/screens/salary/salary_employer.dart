import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Shopemployer extends StatefulWidget {
  const Shopemployer({super.key});

  @override
  State<Shopemployer> createState() => _ShopemployerState();
}

class _ShopemployerState extends State<Shopemployer> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
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
                    Text(
                      MyText.findyour,
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                MyText.salaryserach,
                style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                height: 61.h,
                decoration: BoxDecoration(
                  color: AppColors.rgblwhite,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: MyText.entercom,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      hintStyle: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                    color: AppColors.primaryButton,
                    text: Text(
                      "Continue",
                      style: TextStyle(
                          color: AppColors.btnText,
                          fontFamily: 'WorkSans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

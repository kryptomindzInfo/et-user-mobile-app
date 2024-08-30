import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/sending_request_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeChildAccount extends StatefulWidget {
  const WelcomeChildAccount({super.key});

  @override
  State<WelcomeChildAccount> createState() => _WelcomeChildAccountState();
}

class _WelcomeChildAccountState extends State<WelcomeChildAccount> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.allBoxes,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: Column(
                  children: [
                    Divider(
                      color: AppColors.greyBox,
                      thickness: 2.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssets.logo72,
                            color: AppColors.primaryText,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            MyText.ChildAccount,
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset(
                                AppAssets.exit,
                                color: AppColors.primaryText,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 100.h, left: 40.w, right: 40),
                      child: Image.asset(
                        AppAssets.welcome_child_account,
                        width: 225.w,
                        // height: 180.h,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 60.h, left: 30.w, right: 30),
                      child: Text(
                        MyText.WelcometoETBankChildAccount,
                        style: TextStyle(
                            fontSize: 40.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w700,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 80.h),
                      child: Container(
                        // height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: AppColors.primaryButton,
                            text: Text(
                              MyText.Requestforachildaccount,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                            onPressed: () {
                              SendingRequestLoading(context);
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

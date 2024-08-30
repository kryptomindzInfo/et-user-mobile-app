import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/signin/signin_mobileno.dart';
import 'package:et_bank/ui/screens/signup/singup_mobileno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../widgets/circularbutton.dart';
import 'package:et_bank/global/constants/colors.dart';

class onboarding8 extends StatelessWidget {
  const onboarding8({Key? key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    var applocal = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70.h),
                  Text(
                    applocal.onboard8Textp1,
                    style: MyTextStyles.sora(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    applocal.onboard8Textp2,
                    style: MyTextStyles.work(
                      fontsize: 32.sp,
                      color: AppColors.yellowText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 390.w,
                    height: 453.h,
                    child: Image.asset(
                      AppAssets.onboarding8,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Positioned(
                    bottom: 55.h,
                    left: 50.w,
                    right: 50.w,
                    child: Row(
                      children: [
                        CircularButton(
                          color: AppColors.primaryButton,
                          title: 'Sign in',
                          onTap: () {
                            Get.to(
                              SignInMobileNo(),
                            );
                          },
                        ),
                        SizedBox(width: 20.w),
                        CircularButton(
                          color: AppColors.yellowButton2,
                          title: 'Sign up',

                          onTap: () {
                            Get.to(
                              SignupMobileNo(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

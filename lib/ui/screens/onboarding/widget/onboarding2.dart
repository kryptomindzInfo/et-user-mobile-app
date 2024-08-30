import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:et_bank/global/constants/colors.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({Key? key});

  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    ScreenUtil.init(context, designSize: const Size(390, 844));

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
                    applocal.onboard2Textp1,
                    style: MyTextStyles.sora(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  RichText(
                    text: TextSpan(
                      text: applocal.onboard2Textp2,
                      style: MyTextStyles.work(
                        fontsize: 32.sp,
                        color: AppColors.primaryText,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: applocal.onboard2Textp2s,
                          style: MyTextStyles.work(
                            fontsize: 32.sp,
                            color: AppColors.greenText,
                          ),
                        ),
                        TextSpan(
                          text: applocal.onboard2Textp2ss,
                          style: MyTextStyles.work(
                            fontsize: 32.sp,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 390.w,
                height: 397.h,
                child: Image.asset(
                  AppAssets.onboarding2,
                  width: 390.w,
                  height: 397.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

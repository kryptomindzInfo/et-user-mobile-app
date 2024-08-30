import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class onboarding6 extends StatelessWidget {
  const onboarding6({Key? key});

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
                    applocal.onboard6Textp1,
                    style: MyTextStyles.sora(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    applocal.onboard6Textp2,
                    style: MyTextStyles.work(
                      fontsize: 32.sp,
                      color: AppColors.yellowText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 233.w,
              height: 243.h,
              child: Image.asset(
                AppAssets.onboarding6,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}

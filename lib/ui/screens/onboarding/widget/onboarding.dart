import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:et_bank/global/constants/colors.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

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
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Text(
                    applocal.onboardTextp1,
                    style: MyTextStyles.sora(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    applocal.onboardTextp2,
                    style: MyTextStyles.work(
                      fontsize: 32.sp,
                      color: AppColors.greenText,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    applocal.onboardTextp3,
                    style: MyTextStyles.sora(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: 390.w,
                  height: 391.h,
                  child: Image.asset(
                    AppAssets.onboarding,
                    filterQuality: FilterQuality.high,
                    width: 390.w,
                    height: 391.h,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

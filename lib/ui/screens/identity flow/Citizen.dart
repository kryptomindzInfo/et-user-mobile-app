import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/identity%20flow/passport.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Citizen extends StatefulWidget {
  const Citizen({super.key});

  @override
  State<Citizen> createState() => _CitizenState();
}

class _CitizenState extends State<Citizen> {
  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    applocal.citizen,
                    style: MyTextStyles.sora5(
                      fontsize: 26.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Text(
                    applocal.citizen2,
                    style: MyTextStyles.worknormal(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 120.h),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 240.w,
                  height: 240.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: Image.asset(
                    AppAssets.citizen,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Row(
                children: [
                  CircularButton(
                    color: AppColors.dropdownBox,
                    title: "No",
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CircularButton(
                      color: AppColors.primaryButton,
                      title: "Yes",
                      onTap: () {
                        Get.to(Passport());
                      })
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

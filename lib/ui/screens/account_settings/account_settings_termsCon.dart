import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/account_setting_heywait.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsTermsandConditions extends StatefulWidget {
  const AccountSettingsTermsandConditions({super.key});

  @override
  State<AccountSettingsTermsandConditions> createState() =>
      _AccountSettingsTermsandConditionsState();
}

class _AccountSettingsTermsandConditionsState
    extends State<AccountSettingsTermsandConditions> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 65.0, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          AppAssets.leftarrow,
                          width: 25.12.w,
                          height: 17.94.h,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.TermandConditions,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Text(
                  MyText.TermandConditionssubTitle,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 31.h,
                ),
                InkWell(
                  onTap: () {
                    HeyWaitBottomSheet(context);
                  },
                  child: YourPlanFreeTrial(
                    image: AppAssets.account_confirmation_icon,
                    color: AppColors.greyBox,
                    title: MyText.PersonalTerms,
                    subTitle: MyText.Accepted10minago,
                    textColor: AppColors.primaryText,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

import 'package:et_bank/controllers/accountsettings/accountsetting_securityandprivacy_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsConverter extends StatefulWidget {
  AccountSettingsConverter({super.key});

  @override
  State<AccountSettingsConverter> createState() =>
      _AccountSettingsConverterState();
}

class _AccountSettingsConverterState extends State<AccountSettingsConverter> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountSettingsSecurityAndPrivacyController controller =
      Get.put(AccountSettingsSecurityAndPrivacyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
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
                      MyText.Converter,
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
                height: 32.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                height: 450.h,
                width: 350.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.ukImage,
                      color: AppColors.greyBox,
                      title: MyText.EUR,
                      subTitle: MyText.BritishPound,
                      textColor: AppColors.primaryText,
                      amount: '100',
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.euro_image,
                      color: AppColors.greyBox,
                      title: MyText.EUR,
                      subTitle: MyText.EURO,
                      textColor: AppColors.primaryText,
                      amount: '113.76',
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.usd_image,
                      color: AppColors.greyBox,
                      title: MyText.USD,
                      subTitle: MyText.Dollar,
                      textColor: AppColors.primaryText,
                      amount: '124.25',
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.bitcoin_image,
                      color: AppColors.greyBox,
                      title: MyText.Bitcoin,
                      subTitle: MyText.BTC,
                      textColor: AppColors.primaryText,
                      amount: '113.500076',
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.gold_image,
                      color: AppColors.greyBox,
                      title: MyText.Gold,
                      subTitle: MyText.XAU,
                      textColor: AppColors.primaryText,
                      amount: '0.0000076',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

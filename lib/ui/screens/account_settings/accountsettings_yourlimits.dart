import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsYourLimits extends StatefulWidget {
  const AccountSettingsYourLimits({super.key});

  @override
  State<AccountSettingsYourLimits> createState() =>
      _AccountSettingsYourLimitsState();
}

class _AccountSettingsYourLimitsState extends State<AccountSettingsYourLimits> {
  final ThemeController themeController = Get.put(ThemeController());

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
                      MyText.yourLimits,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Image.asset(AppAssets.logo),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      MyText.Standard,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.accdetail,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    Text(
                      MyText.viewall,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                // height: 355.h,
                width: 350.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.atm_icon,
                      color: AppColors.greyBox,
                      title: MyText.atmWithdrawals,
                      subTitle: MyText.withdrawalamount,
                      textColor: AppColors.primaryText,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.trade_icon,
                      color: AppColors.greyBox,
                      title: MyText.CommissionFee,
                      subTitle: MyText.tradesamount,
                      textColor: AppColors.primaryText,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.exchange_icon,
                      color: AppColors.greyBox,
                      title: MyText.exchange,
                      subTitle: MyText.exchnageamount,
                      textColor: AppColors.primaryText,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.card_icon,
                      color: AppColors.greyBox,
                      title: MyText.Cardtransactions,
                      subTitle: MyText.Unlimited,
                      textColor: AppColors.primaryText,
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

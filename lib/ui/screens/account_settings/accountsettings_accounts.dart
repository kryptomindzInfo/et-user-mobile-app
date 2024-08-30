import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/account_setting_documents.dart';
import 'package:et_bank/ui/screens/account_settings/account_setting_heywait.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_termsCon.dart';
import 'package:et_bank/ui/screens/account_settings/accountsettings_yourlimits.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsAccounts extends StatefulWidget {
  const AccountSettingsAccounts({super.key});

  @override
  State<AccountSettingsAccounts> createState() =>
      _AccountSettingsAccountsState();
}

class _AccountSettingsAccountsState extends State<AccountSettingsAccounts> {
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
                      MyText.Accounts,
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
                height: 185.h,
                width: 350.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    YourPlanFreeTrial(
                      image: AppAssets.person_icon,
                      color: AppColors.greyBox,
                      title: MyText.PersonalDetails,
                      subTitle: MyText.verifyemail,
                      textColor: AppColors.primaryText,
                      subTitleColor: AppColors.red,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AccountSettingsYourLimits()));
                      },
                      child: AccountsWidget(
                        image: AppAssets.account_details_icon,
                        color: AppColors.greyBox,
                        title: MyText.AccountDetails,
                        textColor: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                height: 280.h,
                width: 350.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AccountSettingsDocuments()));
                      },
                      child: AccountsWidget(
                        image: AppAssets.document_icon,
                        color: AppColors.greyBox,
                        title: MyText.Document,
                        textColor: AppColors.primaryText,
                      ),
                    ),
                    AccountsWidget(
                      image: AppAssets.privacy_policy,
                      color: AppColors.greyBox,
                      title: MyText.privacyPolicy,
                      textColor: AppColors.primaryText,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AccountSettingsTermsandConditions()));
                      },
                      child: AccountsWidget(
                        image: AppAssets.termsandcon_icon,
                        color: AppColors.greyBox,
                        title: MyText.termsAndConditions,
                        textColor: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                onTap: () {
                  HeyWaitBottomSheet(context);
                },
                child: AccountsWidget(
                  image: AppAssets.close_account_icon,
                  color: AppColors.greyBox,
                  title: MyText.CloseAccount,
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

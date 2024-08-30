import 'package:et_bank/controllers/accountsettings/accountsetting_securityandprivacy_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsAboutus extends StatefulWidget {
  AccountSettingsAboutus({super.key});

  @override
  State<AccountSettingsAboutus> createState() => _AccountSettingsAboutusState();
}

class _AccountSettingsAboutusState extends State<AccountSettingsAboutus> {
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
                      MyText.about,
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
              AccountsWidget(
                image: AppAssets.rateus_icon,
                color: AppColors.greyBox,
                title: MyText.Rateus,
                textColor: AppColors.primaryText,
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                height: 265.h,
                width: 350.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {},
                      child: AccountsWidget(
                        image: AppAssets.blog_icon,
                        color: AppColors.greyBox,
                        title: MyText.Ourblog,
                        textColor: AppColors.primaryText,
                      ),
                    ),
                    AccountsWidget(
                      image: AppAssets.twitter_icon,
                      color: AppColors.greyBox,
                      title: MyText.followusonTwitter,
                      textColor: AppColors.primaryText,
                    ),
                    InkWell(
                      onTap: () {},
                      child: AccountsWidget(
                        image: AppAssets.facebook_icon,
                        color: AppColors.greyBox,
                        title: MyText.LikeusonFacebook,
                        textColor: AppColors.primaryText,
                      ),
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

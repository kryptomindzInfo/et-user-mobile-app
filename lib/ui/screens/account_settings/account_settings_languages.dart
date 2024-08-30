import 'package:et_bank/controllers/Localization/localization_controller.dart';
import 'package:et_bank/controllers/accountsettings/accountsetting_securityandprivacy_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsLanguages extends StatefulWidget {
  AccountSettingsLanguages({super.key});

  @override
  State<AccountSettingsLanguages> createState() =>
      _AccountSettingsLanguagesState();
}

class _AccountSettingsLanguagesState extends State<AccountSettingsLanguages> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountSettingsSecurityAndPrivacyController controller =
      Get.put(AccountSettingsSecurityAndPrivacyController());

  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    return Obx(
      () => Scaffold(
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
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.Language,
                        style: TextStyle(
                            color: AppColors.white,
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
                      color: AppColors.buttongrey,
                      borderRadius: BorderRadius.circular(20)),
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Get.find<LanguageController>()
                              .changeLanguage(const Locale('en'));
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.usimag,
                          color: AppColors.buttongrey,
                          title: applocal.english,
                          subTitle: MyText.UnitedKingdom,
                          textColor: AppColors.white,
                        ),
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.t_uk,
                        color: AppColors.buttongrey,
                        title: applocal.english,
                        subTitle: MyText.UnitedKingdom,
                        textColor: AppColors.white,
                      ),
                      InkWell(
                        onTap: () {
                          Get.find<LanguageController>()
                              .changeLanguage(const Locale('es'));
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.greencircle,
                          color: AppColors.buttongrey,
                          title: MyText.Portuguese,
                          subTitle: MyText.Purtugal,
                          textColor: AppColors.white,
                        ),
                      ),
                      Text(
                        applocal.helloWorld,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

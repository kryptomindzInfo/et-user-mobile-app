import 'package:et_bank/controllers/accountsettings/accountsetting_securityandprivacy_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_changeicon.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_language.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountSettingsAppSettings extends StatefulWidget {
  AccountSettingsAppSettings({super.key});

  @override
  State<AccountSettingsAppSettings> createState() =>
      _AccountSettingsAppSettingsState();
}

class _AccountSettingsAppSettingsState
    extends State<AccountSettingsAppSettings> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountSettingsSecurityAndPrivacyController controller =
      Get.put(AccountSettingsSecurityAndPrivacyController());

  void _showThemeSelectionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: themeController.bgColor.value,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Theme',
                style: TextStyle(
                  color: AppColors.primaryText
                ),
              ),
              ListTile(
                title: Text(
                  'System Default',
                  style: TextStyle(
                  color: AppColors.primaryText
                ),
                ),
                onTap: () {
                  themeController.applyTheme(ThemeModeType.system);
                  Navigator.pop(context);
                },
                leading: Obx(() {
                  return Radio<ThemeModeType>(
                    activeColor: AppColors.greenText,
                    value: ThemeModeType.system,
                    groupValue: themeController.themeMode.value,
                    onChanged: (ThemeModeType? value) {
                      if (value != null) {
                        themeController.applyTheme(value);
                      }
                      Navigator.pop(context);
                    },
                  );
                }),
              ),
              ListTile(
                title: Text(
                  'Dark',
                  style: TextStyle(
                  color: AppColors.primaryText
                ),
                ),
                onTap: () {
                  themeController.applyTheme(ThemeModeType.dark);
                  Navigator.pop(context);
                },
                leading: Obx(() {
                  return Radio<ThemeModeType>(
                    activeColor: AppColors.greenText,
                    value: ThemeModeType.dark,
                    groupValue: themeController.themeMode.value,
                    onChanged: (ThemeModeType? value) {
                      if (value != null) {
                        themeController.applyTheme(value);
                      }
                      Navigator.pop(context);
                    },
                  );
                }),
              ),
              ListTile(
                title: Text(
                  'Light',
                  style: TextStyle(
                  color: AppColors.primaryText
                ),
                ),
                onTap: () {
                  themeController.applyTheme(ThemeModeType.light);
                  Navigator.pop(context);
                },
                leading: Obx(() {
                  return Radio<ThemeModeType>(
                    activeColor: AppColors.greenText,
                    value: ThemeModeType.light,
                    groupValue: themeController.themeMode.value,
                    onChanged: (ThemeModeType? value) {
                      if (value != null) {
                        themeController.applyTheme(value);
                      }
                      Navigator.pop(context);
                    },
                  );
                }),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                          color: AppColors.primaryText,
                          height: 17.94.h,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.AppSettings,
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
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          showchangeiconBottomSheet(context);
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.devices_icon,
                          color: AppColors.greyBox,
                          title: MyText.Appicon,
                          subTitle: MyText.Standard,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showThemeSelectionBottomSheet(context);
                          // Get.to(AccountSettingsLanguages());
                          // showLanguageBottomSheet(context);
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.theme_icon,
                          color:  AppColors.greyBox,
                          // color: AppColors.primary,
                          title: MyText.Theme,
                          subTitle: themeController.themeMode.value ==
                                  ThemeModeType.system
                              ? MyText.SystemDefault
                              : themeController.themeMode.value ==
                                      ThemeModeType.dark
                                  ? MyText.Dark
                                  : MyText.Light,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(AccountSettingsLanguages());
                          showLanguageBottomSheet(context);
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.language_icon,
                          color: AppColors.greyBox,
                          title: MyText.Language,
                          subTitle: MyText.English,
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
      ),
    );
  }
}

import 'package:et_bank/controllers/esim_settings_flow/esim_data_preference_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/screens/esim_settings/esim_settings_choose_your_language.dart';
import 'package:et_bank/ui/screens/esim_settings/esim_settings_chooseyourregion.dart';
import 'package:et_bank/ui/screens/esim_settings/esim_settings_setdatalimit.dart';
import 'package:et_bank/ui/screens/esim_settings/esim_settings_setdatawarning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());

class EsimSettingsDataPreference extends StatefulWidget {
  EsimSettingsDataPreference({super.key});

  @override
  State<EsimSettingsDataPreference> createState() =>
      _EsimSettingsDataPreferenceState();
}

class _EsimSettingsDataPreferenceState
    extends State<EsimSettingsDataPreference> {
  EsimDataPreferenceController controller =
      Get.put(EsimDataPreferenceController());

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
                      GestureDetector(
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
                        MyText.Esim,
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
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    MyText.DataPreferences,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.greyBox,
                  ),
                  child: Column(
                    children: [
                      YourPlanFreeTrial(
                        color: AppColors.greyBox,
                        title: MyText.SetDataWarning,
                        subTitle: MyText.GB10,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.dataWarning.value,
                        switchOnchanged: (val) {
                          controller.toggleDataWarning();
                          if (controller.dataWarning.value == true) {
                            setDataWarning(context);
                          }
                        },
                      ),
                      YourPlanFreeTrial(
                        color: AppColors.greyBox,
                        title: MyText.SetDataLimit,
                        subTitle: MyText.GB10,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.dataLimit.value,
                        switchOnchanged: (val) {
                          controller.toggleDataLimit();
                          if (controller.dataLimit.value == true) {
                            setDataLimit(context);
                          }
                        },
                      ),
                      GestureDetector(
                        child: AccountsWidget(
                          color: AppColors.greyBox,
                          title: MyText.DataRoaming,
                          textColor: AppColors.primaryText,
                          switchbutton: true,
                          switchvalue: controller.dataRoaming.value,
                          switchOnchanged: (val) {
                            controller.toggleDataRoaming();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    MyText.LanguageandRegionPreferences,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.greyBox,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          chooseYourLanguage(context);
                        },
                        child: YourPlanFreeTrial(
                          color: AppColors.greyBox,
                          title: MyText.Language,
                          subTitle: MyText.English,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          chooseYourRegion(context);
                        },
                        child: YourPlanFreeTrial(
                          color: AppColors.greyBox,
                          title: MyText.Region,
                          subTitle: MyText.Europe,
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

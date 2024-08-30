import 'package:et_bank/controllers/accountsettings/accountsetting_securityandprivacy_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsSecurityAndPrivacy extends StatefulWidget {
  AccountSettingsSecurityAndPrivacy({super.key});

  @override
  State<AccountSettingsSecurityAndPrivacy> createState() =>
      _AccountSettingsSecurityAndPrivacyState();
}

class _AccountSettingsSecurityAndPrivacyState
    extends State<AccountSettingsSecurityAndPrivacy> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountSettingsSecurityAndPrivacyController controller =
      Get.put(AccountSettingsSecurityAndPrivacyController());

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
                          height: 17.94.h,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.Securityandprivacy,
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
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    MyText.PersonalDetails,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 655.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      AccountsWidget(
                        image: AppAssets.changepassword_icon,
                        color: AppColors.greyBox,
                        title: MyText.Changepasscode,
                        textColor: AppColors.primaryText,
                      ),
                      AccountsWidget(
                        image: AppAssets.trustedmerchants_icon,
                        color: AppColors.greyBox,
                        title: MyText.TrustedMerchants,
                        textColor: AppColors.primaryText,
                      ),
                      AccountsWidget(
                        image: AppAssets.devices_icon,
                        color: AppColors.greyBox,
                        title: MyText.Devices,
                        textColor: AppColors.primaryText,
                      ),
                      AccountsWidget(
                        image: AppAssets.gambling_icon,
                        color: AppColors.greyBox,
                        title: MyText.Gamblingblock,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.gamblingBlock.value,
                        switchOnchanged: (bool value) {
                          controller.setGamblingBlock();
                        },
                      ),
                      AccountsWidget(
                        image: AppAssets.appnotifs_icon,
                        color: AppColors.greyBox,
                        title: MyText.Appnotifications,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.appnotif.value,
                        switchOnchanged: (bool value) {
                          controller.setappnotif();
                        },
                      ),
                      AccountsWidget(
                        image: AppAssets.signinwithface_icon,
                        color: AppColors.greyBox,
                        title: MyText.SigninwithfaceID,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.signinwithface.value,
                        switchOnchanged: (bool value) {
                          controller.setsigninwithface();
                        },
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.hidebalance_icon,
                        color: AppColors.greyBox,
                        title: MyText.Hidebalances,
                        subTitle: MyText.Flipyourdevicescreen,
                        textColor: AppColors.primaryText,
                        height: 120,
                        switchbutton: true,
                        switchvalue: controller.hidebalance.value,
                        switchOnchanged: (bool value) {
                          controller.sethidebalance();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    MyText.privacy,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                YourPlanFreeTrial(
                  image: AppAssets.discoverable_icon,
                  color: AppColors.greyBox,
                  title: MyText.Makemediscoverable,
                  subTitle: MyText.Byphonenumber,
                  textColor: AppColors.primaryText,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

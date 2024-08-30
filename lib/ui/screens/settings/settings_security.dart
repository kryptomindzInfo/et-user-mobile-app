import 'package:et_bank/controllers/settings/settings_security_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SettingsSecurity extends StatefulWidget {
  SettingsSecurity({super.key});

  @override
  State<SettingsSecurity> createState() => _SettingsSecurityState();
}

class _SettingsSecurityState extends State<SettingsSecurity> {
  final ThemeController themeController = Get.put(ThemeController());

  SettingsSecurityController securityController =
      Get.put(SettingsSecurityController());

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
                        ),
                      ),
                      SizedBox(
                        width: 115.w,
                      ),
                      Text(
                        MyText.Settings,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Security,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.buttongrey,
                      borderRadius: BorderRadius.circular(20)),
                  height: 1000.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        height: 230.h,
                        image: AppAssets.onlinetransaction_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Onlinetransaction,
                        subTitle: MyText.Internet_based,
                        textColor: AppColors.white,
                        switchbutton: true,
                        switchvalue: securityController.onlineTransaction.value,
                        switchOnchanged: (value) {
                          securityController.setonlineTransaction();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 200.h,
                        image: AppAssets.location_based_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Location_basedsecurity,
                        subTitle: MyText.Weuseyourlocation,
                        textColor: AppColors.white,
                        switchbutton: true,
                        switchvalue: securityController.locationBased.value,
                        switchOnchanged: (value) {
                          securityController.selocationBased();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 160.h,
                        image: AppAssets.card_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Swipepayments,
                        subTitle: MyText.Sometimescardcanbecloned,
                        textColor: AppColors.white,
                        switchbutton: true,
                        switchvalue: securityController.swipePayments.value,
                        switchOnchanged: (value) {
                          securityController.setswipePayments();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 160.h,
                        image: AppAssets.atm_icon,
                        color: AppColors.buttongrey,
                        title: MyText.atmWithdrawals,
                        subTitle: MyText.plantowithdrawcash,
                        textColor: AppColors.white,
                        switchbutton: true,
                        switchvalue: securityController.atmWithDrawals.value,
                        switchOnchanged: (value) {
                          securityController.setatmWithDrawals();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 220.h,
                        image: AppAssets.contactless_payments_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Contactlesspayments,
                        subTitle: MyText.candisablecontactlesspayments,
                        textColor: AppColors.white,
                        switchbutton: true,
                        switchvalue:
                            securityController.contactlessPayments.value,
                        switchOnchanged: (value) {
                          securityController.setcontactlessPayments();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.buttongrey,
                      borderRadius: BorderRadius.circular(20)),
                  height: 240.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.replace_card_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Replacecard,
                        subTitle: MyText.Loststolennotdelivered,
                        textColor: AppColors.white,
                      ),
                      YourPlanFreeTrial(
                        height: 100.h,
                        image: AppAssets.terminate_card_icon,
                        color: AppColors.buttongrey,
                        title: MyText.Terminatecard,
                        subTitle: MyText.cardpermanentlyterminated,
                        textColor: AppColors.white,
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

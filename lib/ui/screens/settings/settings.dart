import 'package:et_bank/controllers/settings/settings_security_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/screens/e_sim_activation/choose_mobile_no.dart';
import 'package:et_bank/ui/screens/esim_settings/esim_settings_datapreference.dart';
import 'package:et_bank/ui/screens/settings/settings_code.dart';
import 'package:et_bank/ui/screens/settings/settings_labelcard.dart';
import 'package:et_bank/ui/screens/settings/settings_spendfrom.dart';
import 'package:et_bank/ui/screens/settings/settings_spending_limit.dart';
import 'package:et_bank/ui/screens/settings/widgets/settings_widget.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Settings extends StatefulWidget {
  Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.Settings,
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
                Text(
                  MyText.Spendfrom,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    spendFromBottomSheet(context);
                  },
                  child: SettingsWidget(
                    height: 116.h,
                    image: AppAssets.account_details_icon,
                    color: AppColors.greyBox,
                    title: MyText.Allcashaccounts,
                    subTitle: MyText.Totalbalance,
                    textColor: AppColors.primaryText,
                    topPadding: 30.h,
                    bottomPadding: 30.h,
                    radius: 32,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Limit,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsSpendingLimit()));
                  },
                  child: SettingsWidget(
                    height: 116.h,
                    image: AppAssets.spendinglimit_icon,
                    color: AppColors.greyBox,
                    title: MyText.Spendinglimit,
                    subTitle: MyText.Setmonthlyspendingamount,
                    textColor: AppColors.primaryText,
                    topPadding: 30.h,
                    bottomPadding: 30.h,
                    radius: 32,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Esim,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    securityController.firstTimeEsim.value == true
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EsimChooseMobileNo()))
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EsimSettingsDataPreference()));
                  },
                  child: SettingsWidget(
                    height: 116.h,
                    image: AppAssets.esim,
                    color: AppColors.greyBox,
                    title: MyText.Esim,
                    subTitle: MyText.Activateyouresim,
                    subTitleColor: AppColors.greenText,
                    textColor: AppColors.primaryText,
                    topPadding: 30.h,
                    bottomPadding: 30.h,
                    radius: 32,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Customise,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsLabelCard()));
                  },
                  child: SettingsWidget(
                    height: 116.h,
                    image: AppAssets.labelcard_icon,
                    color: AppColors.greyBox,
                    title: MyText.Labelcard,
                    subTitle: MyText.Addcustomename,
                    textColor: AppColors.primaryText,
                    topPadding: 30.h,
                    bottomPadding: 30.h,
                    radius: 32,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.PIN,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 295.h,
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
                                  builder: (context) => SettingsCode()));
                        },
                        child: SettingsWidget(
                          height: 116.h,
                          image: AppAssets.viewpin_icon,
                          color: AppColors.greyBox,
                          title: MyText.ViewPIN,
                          subTitle: MyText.AlwaysprotectyourPIN,
                          textColor: AppColors.primaryText,
                          bottomPadding: 15.h,
                          topPadding: 30.h,
                          radius: 32,
                        ),
                      ),
                      SettingsWidget(
                        height: 116.h,
                        image: AppAssets.unblock_icon,
                        color: AppColors.greyBox,
                        title: MyText.UnblockPIN_CVV,
                        subTitle: MyText.Useafterexceeding3tries,
                        textColor: AppColors.primaryText,
                        topPadding: 15.h,
                        bottomPadding: 30.h,
                        radius: 32,
                      ),
                    ],
                  ),
                ),

                // Security Screen Code

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      MyText.Security,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.greyBox,
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
                            imagePadding: 150.h,
                            color: AppColors.greyBox,
                            title: MyText.Onlinetransaction,
                            subTitle: MyText.Internet_based,
                            textColor: AppColors.primaryText,
                            switchbutton: true,
                            switchvalue:
                                securityController.onlineTransaction.value,
                            switchOnchanged: (value) {
                              securityController.setonlineTransaction();
                            },
                          ),
                          YourPlanFreeTrial(
                            height: 200.h,
                            image: AppAssets.location_based_icon,
                            imagePadding: 115.h,
                            color: AppColors.greyBox,
                            title: MyText.Location_basedsecurity,
                            subTitle: MyText.Weuseyourlocation,
                            textColor: AppColors.primaryText,
                            switchbutton: true,
                            switchvalue: securityController.locationBased.value,
                            switchOnchanged: (value) {
                              securityController.selocationBased();
                            },
                          ),
                          YourPlanFreeTrial(
                            height: 160.h,
                            image: AppAssets.card_icon,
                            imagePadding: 80.h,
                            color: AppColors.greyBox,
                            title: MyText.Swipepayments,
                            subTitle: MyText.Sometimescardcanbecloned,
                            textColor: AppColors.primaryText,
                            switchbutton: true,
                            switchvalue: securityController.swipePayments.value,
                            switchOnchanged: (value) {
                              securityController.setswipePayments();
                            },
                          ),
                          YourPlanFreeTrial(
                            height: 160.h,
                            image: AppAssets.atm_icon,
                            imagePadding: 80.h,
                            color: AppColors.greyBox,
                            title: MyText.atmWithdrawals,
                            subTitle: MyText.plantowithdrawcash,
                            textColor: AppColors.primaryText,
                            switchbutton: true,
                            switchvalue:
                                securityController.atmWithDrawals.value,
                            switchOnchanged: (value) {
                              securityController.setatmWithDrawals();
                            },
                          ),
                          YourPlanFreeTrial(
                            height: 220.h,
                            image: AppAssets.contactless_payments_icon,
                            imagePadding: 140.h,
                            color: AppColors.greyBox,
                            title: MyText.Contactlesspayments,
                            subTitle: MyText.candisablecontactlesspayments,
                            textColor: AppColors.primaryText,
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
                          color: AppColors.greyBox,
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
                            color: AppColors.greyBox,
                            title: MyText.Replacecard,
                            subTitle: MyText.Loststolennotdelivered,
                            textColor: AppColors.primaryText,
                          ),
                          YourPlanFreeTrial(
                            height: 100.h,
                            image: AppAssets.terminate_card_icon,
                            color: AppColors.greyBox,
                            title: MyText.Terminatecard,
                            subTitle: MyText.cardpermanentlyterminated,
                            textColor: AppColors.primaryText,
                            imageColor: AppColors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

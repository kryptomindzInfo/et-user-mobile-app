import 'package:et_bank/controllers/transfer/transfer_securityandprivacy_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TransferSecurityandPrivacy extends StatefulWidget {
  TransferSecurityandPrivacy({super.key});

  @override
  State<TransferSecurityandPrivacy> createState() =>
      _TransferSecurityandPrivacyState();
}

class _TransferSecurityandPrivacyState
    extends State<TransferSecurityandPrivacy> {
  TransferSecurityAndPrivacyController controller =
      Get.put(TransferSecurityAndPrivacyController());

  final ThemeController themeController = Get.put(ThemeController());

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
                        width: 75.w,
                      ),
                      Text(
                        MyText.Securityandprivacy,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 360.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        height: 100.h,
                        image: AppAssets.search,
                        color: AppColors.greyBox,
                        title: MyText.Makemediscoverable,
                        subTitle: MyText.Byphonenumber,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        height: 150.h,
                        image: AppAssets.messaging,
                        color: AppColors.greyBox,
                        title: MyText.Messagingwithfriends,
                        subTitle: MyText.messageswithetbankusers,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.messagingWithFriends.value,
                        switchOnchanged: (value) {
                          controller.setmessagingWithFriends();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 100.h,
                        image: AppAssets.addtogroups,
                        color: AppColors.greyBox,
                        title: MyText.Allowothersaddmetogroups,
                        subTitle: '',
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.allowtoaddmeGroups.value,
                        switchOnchanged: (value) {
                          controller.setallowtoaddmeGroups();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Marketing,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 340.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        height: 150.h,
                        image: AppAssets.personalised_emails,
                        color: AppColors.greyBox,
                        title: MyText.Personalisedemails,
                        subTitle: MyText.emailsetbank,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.personalisedEmails.value,
                        switchOnchanged: (value) {
                          controller.setpersonalisedEmails();
                        },
                      ),
                      YourPlanFreeTrial(
                        height: 160.h,
                        image: AppAssets.personalised_pushes,
                        color: AppColors.greyBox,
                        title: MyText.Personalisedpushes,
                        subTitle: MyText.pushnotifetbank,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue: controller.personalisedPushes.value,
                        switchOnchanged: (value) {
                          controller.setpersonalisedPushes();
                        },
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

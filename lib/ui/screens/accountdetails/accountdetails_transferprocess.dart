import 'package:et_bank/controllers/Bottomnavigation/bottomcontroller.dart';
import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AccountTransferProcess extends StatefulWidget {
  AccountTransferProcess({super.key});

  @override
  State<AccountTransferProcess> createState() => _AccountTransferProcessState();
}

class _AccountTransferProcessState extends State<AccountTransferProcess> {
  BtmNavigationController btmNavigationController =
      Get.put(BtmNavigationController());

  AccountDetailsFlowAccountDetailsController accountDetailsController =
      Get.put(AccountDetailsFlowAccountDetailsController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              height: 500.h,
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 25, 27, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 39.h,
                            ),
                            Container(
                                width: 110.w,
                                height: 110.h,
                                child: Image.asset(AppAssets.clock_icon)),
                            SizedBox(
                              height: 32.h,
                            ),
                            Text(
                              MyText.transferprocessed,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            Text(
                              MyText.SentfromETBank,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.greyText2,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              MyText.EstimatedarrivalUsuallyinseconds,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.greyText2,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                              ),
                              child: ButtonWidget(
                                  color: AppColors.whiteButton,
                                  text: Text(
                                    MyText.Nogoback,
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: MyTextStyles.worksansFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onPressed: () {
                                    accountDetailsController
                                        .setFirstTimeTransfer(false);
                                    btmNavigationController.changeTab(1);

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                btmnavigation()));
                                    // transferCompleted(context);
                                  }),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

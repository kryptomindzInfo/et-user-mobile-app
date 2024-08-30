import 'package:et_bank/controllers/accountFlow/account_gbpstatement_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account/widgets/gbp_card_widget.dart';

import 'package:et_bank/ui/widgets/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
class AccountGBPStatement extends StatefulWidget {

  AccountGBPStatement({super.key});

  @override
  State<AccountGBPStatement> createState() => _AccountGBPStatementState();
}

class _AccountGBPStatementState extends State<AccountGBPStatement> {
      final ThemeController themeController = Get.put(ThemeController());

  AccountGBPStatementController accountGBPStatementController =
      Get.put(AccountGBPStatementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Obx(() {
            return Column(
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
                        MyText.gbpStatement,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Sora'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.inActiveTabButtons2,
                      borderRadius: BorderRadius.circular(48)),
                  height: 43.h,
                  width: 349.w,
                  child: Row(
                    children: [
                      Container(
                        height: 43.h,
                        width: 175.w,
                        child: ButtonWidget(
                            color: accountGBPStatementController
                                .getPdfButtonColor(),
                            text: Text(
                              MyText.pdf,
                              style: TextStyle(
                                  color: accountGBPStatementController
                                      .getPdfButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Work Sans'),
                            ),
                            onPressed: () {
                              accountGBPStatementController.setLocalValue(true);
                            }),
                      ),
                      Container(
                        height: 43.h,
                        width: 173.w,
                        child: ButtonWidget(
                            color: accountGBPStatementController
                                .getExcelButtonColor(),
                            text: Text(
                              MyText.excel,
                              style: TextStyle(
                                  color: accountGBPStatementController
                                      .getExcelButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                            onPressed: () {
                              accountGBPStatementController
                                  .setLocalValue(false);
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GBPCardWidget(),
                SizedBox(
                  height: 32.h,
                ),
                Center(
                  child: Container(
                    width: 324.w,
                    child: Text(
                      MyText.downloadText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

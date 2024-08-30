import 'package:et_bank/controllers/accountFlow/account_details_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account/account_gbpstatement.dart';
import 'package:et_bank/ui/screens/account/widgets/beneficiary_card_widget.dart';
import 'package:et_bank/ui/screens/account/widgets/detail_card_widget.dart';

import 'package:et_bank/ui/widgets/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountDetails extends StatefulWidget {
  AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsController accountDetailsController =
      Get.put(AccountDetailsController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          MyText.accountDetailsAmount,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Sora',
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Image.asset(AppAssets.icon_security),
                      ],
                    ),
                    Image.asset(
                      AppAssets.ukImage,
                      height: 50.h,
                      width: 50.w,
                    ),
                  ],
                ),
                Text(
                  MyText.BritishPound,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'WorkSans'),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 39.h,
                      width: 110.w,
                      child: ButtonWidget(
                          color: AppColors.yellowButton,
                          text: Text(
                            MyText.exchange,
                            style: TextStyle(
                                color: themeController.bgColor.value,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'WorkSans'),
                          ),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      height: 39.h,
                      width: 129.w,
                      child: ButtonWidget(
                          color: AppColors.greyBox,
                          text: Text(
                            MyText.statement,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'WorkSans'),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AccountGBPStatement()));
                          }),
                    ),
                  ],
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
                            color:
                                accountDetailsController.getLocalButtonColor(),
                            text: Text(
                              MyText.local,
                              style: TextStyle(
                                  color: accountDetailsController
                                      .getLocalButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Work Sans'),
                            ),
                            onPressed: () {
                              accountDetailsController.setLocalValue(true);
                            }),
                      ),
                      // SizedBox(
                      //   width: 8.w,
                      // ),
                      Container(
                        height: 43.h,
                        width: 173.w,
                        child: ButtonWidget(
                            color:
                                accountDetailsController.getSwiftButtonColor(),
                            text: Text(
                              MyText.swift,
                              style: TextStyle(
                                  color: accountDetailsController
                                      .getSwiftButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                            onPressed: () {
                              accountDetailsController.setLocalValue(false);
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.domesticTransfer,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Text(
                        MyText.share,
                        style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                BeneficiaryCardWidget(),
                SizedBox(
                  height: 16.h,
                ),
                accountDetailsController.local == true
                    ? DetailCardWidget(
                        text1: MyText.detailCardText1,
                        text2: MyText.detailCardText2,
                        text3: MyText.detailCardText3,
                        text4: MyText.detailCardText4,
                      )
                    : DetailCardWidget(
                        text1: MyText.detailCardText1,
                        text2: MyText.switftDetailCardText2,
                        text3: MyText.switftDetailCardText3,
                        text4: MyText.switftDetailCardText4,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

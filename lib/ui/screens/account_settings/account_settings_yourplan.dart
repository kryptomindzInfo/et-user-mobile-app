import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account/account_details.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/specialoffer_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/squarecontainers.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountSettingsYourPlan extends StatefulWidget {
  const AccountSettingsYourPlan({super.key});

  @override
  State<AccountSettingsYourPlan> createState() =>
      _AccountSettingsYourPlanState();
}

class _AccountSettingsYourPlanState extends State<AccountSettingsYourPlan> {
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
                        width: 16,
                      ),
                      Text(
                        MyText.yourPlan,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.logo),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        MyText.Standard,
                        style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountDetails(),
                      ),
                    );
                  },
                  child: YourPlanFreeTrial(
                    image: AppAssets.diamond2x,
                    color: AppColors.greyBox,
                    title: MyText.freeTrial,
                    subTitle: MyText.enjoyPremium,
                    textColor: AppColors.primaryText,
                    circleColor: AppColors.greyBox,
                    imageColor: AppColors.regularIcon,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.accdetail,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Text(
                        MyText.viewall,
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
                  height: 8.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 270.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.atm_icon,
                        color: AppColors.greyBox,
                        title: MyText.atmWithdrawals,
                        subTitle: MyText.withdrawalamount,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.trade_icon,
                        color: AppColors.greyBox,
                        title: MyText.CommissionFee,
                        subTitle: MyText.tradesamount,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.exchange_icon,
                        color: AppColors.greyBox,
                        title: MyText.exchange,
                        subTitle: MyText.exchnageamount,
                        textColor: AppColors.primaryText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.yourCashback,
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
                  height: 8.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 170.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27.h,
                      ),
                      Text(
                        MyText.nocashback,
                        style: TextStyle(
                          color: AppColors.greyText2,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        MyText.amount,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          MyText.taptoExplore,
                          style: TextStyle(
                              color: AppColors.greenText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.getmore,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Text(
                        MyText.seeall,
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
                SquareContainers(),
                SizedBox(
                  height: 48.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.tryplansfree,
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
                  height: 17.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.greenText,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 370.h,
                  width: 350.w,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 188, right: 12),
                          child: SpecialOfferWidget(),
                        ),
                        SizedBox(
                          height: 153.h,
                        ),
                        Text(
                          MyText.join400k,
                          style: TextStyle(
                              color: themeController.bgColor.value,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          MyText.onemonthfree,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                      ],
                    ),
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

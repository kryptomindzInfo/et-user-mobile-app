import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_buydottostake.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/staking_Information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class PolkaDotStaking extends StatefulWidget {
  const PolkaDotStaking({super.key});

  @override
  State<PolkaDotStaking> createState() => _PolkaDotStakingState();
}

class _PolkaDotStakingState extends State<PolkaDotStaking> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyText.Polkadotstaking,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyTextStyles.soraFamily),
              ),
              Text(
                MyText.DOT1244,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ],
          ),
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset(
                AppAssets.DOT,
                height: 42.h,
                width: 42.h,
              ),
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyText.Stakinginformation,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      StakingInformationWidget(
                        height: 140.h,
                        image: AppAssets.percent,
                        title: MyText.Earnupto1244APY,
                        textColor: AppColors.primaryText,
                        subTitle: MyText.Therewardvaries,
                        color: AppColors.greyBox,
                      ),
                      StakingInformationWidget(
                        height: 140.h,
                        image: AppAssets.reward,
                        title: MyText.Rewardspaidweekly,
                        textColor: AppColors.primaryText,
                        subTitle: MyText.Aftera2day,
                        color: AppColors.greyBox,
                      ),
                      StakingInformationWidget(
                        height: 140.h,
                        image: AppAssets.rewards_restacked,
                        title: MyText.Rewardsrestakedautomatically,
                        textColor: AppColors.primaryText,
                        subTitle: MyText.Yourrewardswillbeautomaticallyrestaked,
                        color: AppColors.greyBox,
                      ),
                      StakingInformationWidget(
                        height: 210.h,
                        image: AppAssets.locked,
                        title: MyText.Lockedfor29days,
                        textColor: AppColors.primaryText,
                        subTitle: MyText.Onceunstakedyouneedtowait,
                        color: AppColors.greyBox,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            return BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primary,
                      text: const Text(
                        MyText.continu,
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        showBuyDotToStockModalBottomSheet(context);
                      }),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

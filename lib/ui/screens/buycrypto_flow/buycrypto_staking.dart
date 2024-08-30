import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class BuyCryptoStaking extends StatefulWidget {
  const BuyCryptoStaking({super.key});

  @override
  State<BuyCryptoStaking> createState() => _BuyCryptoStakingState();
}

class _BuyCryptoStakingState extends State<BuyCryptoStaking> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  First Container

            Container(
              width: 351.w,
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 22, 21, 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '0',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily,
                            ),
                          ),
                          TextSpan(
                            text: '.11143756 DOT',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      MyText.StakeDOT,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily,
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.Amount,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        Text(
                          MyText.Amountval,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.Exchanged,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        Text(
                          MyText.APY1244,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),

            //  Second Container

            Container(
              width: 351.w,
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 22, 21, 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      MyText.Firstrewardexpectedin,
                      style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      MyText.days2,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      MyText.learnmore,
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),

            //  Third Container

            Text(
              MyText.Stakinginformation,
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: MyTextStyles.soraFamily,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 351.w,
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 22, 0, 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AccountsWidget(
                      image: AppAssets.reward,
                      color: AppColors.greyBox,
                      title: MyText.Rewardspaidweekly,
                      textColor: AppColors.primaryText,
                    ),
                    AccountsWidget(
                      image: AppAssets.rewards_restacked,
                      color: AppColors.greyBox,
                      title: MyText.Rewardsrestakedautomatically,
                      textColor: AppColors.primaryText,
                    ),
                    AccountsWidget(
                      image: AppAssets.locked,
                      color: AppColors.greyBox,
                      title: MyText.Lockedfor29days,
                      textColor: AppColors.primaryText,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/screens/donations/donations_details.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class DonationsFirstDonation extends StatefulWidget {
  const DonationsFirstDonation({super.key});

  @override
  State<DonationsFirstDonation> createState() => _DonationsFirstDonationState();
}

class _DonationsFirstDonationState extends State<DonationsFirstDonation> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
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
            title: Text(
              MyText.Donations,
              style: TextStyle(
                  color: AppColors.primaryText  ,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(
                    hintText: "Home",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 135.w,
                        child: ButtonWidget(
                            color: AppColors.yellowButton,
                            text: Row(
                              children: [
                                Image.asset(
                                  AppAssets.charities,
                                  height: 19.h,
                                  width: 19.w,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text(
                                  MyText.Charities,
                                  style: TextStyle(
                                      color: themeController.bgColor.value,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Get.to(DonationsDetails());
                            }),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        width: 165.w,
                        child: ButtonWidget(
                            color: AppColors.greyBox,
                            text: Row(
                              children: [
                                Image.asset(
                                  AppAssets.contribution,
                                  height: 19.h,
                                  width: 19.w,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text(
                                  MyText.Contribution,
                                  style: TextStyle(
                                      color: AppColors.greyText2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              ],
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  // First Container

                  YourPlanFreeTrial(
                    image: AppAssets.first_donation,
                    color: AppColors.greyBox,
                    title: MyText.Makeyourfirstdonation,
                    subTitle: MyText.Tothecharityofyourchoice,
                    textColor: AppColors.primaryText,
                    amountColor: AppColors.greyText2,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.Overallimpact,
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
                  SizedBox(
                    height: 8.h,
                  ),

                  // Second Container

                  Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 23, 0, 23),
                      child: Column(
                        children: [
                          Text(
                            MyText.peoplehavecontributed,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            MyText.a2979017584,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.Yourcontribution,
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
                  SizedBox(
                    height: 8.h,
                  ),

                  // Third Container

                  Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 23, 0, 23),
                      child: Column(
                        children: [
                          Text(
                            MyText.Alltime,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            MyText.amount,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

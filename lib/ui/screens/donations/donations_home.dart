import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget2.dart';
import 'package:et_bank/ui/screens/donations/widgets/donations_hunger_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class DonationsHome extends StatefulWidget {
  const DonationsHome({super.key});

  @override
  State<DonationsHome> createState() => _DonationsHomeState();
}

class _DonationsHomeState extends State<DonationsHome> {
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
                  color: AppColors.primaryText,
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
                                  color: AppColors.blackText,
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
                            onPressed: () {}),
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
                                  color: AppColors.primaryText,
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
                  DonationsHungerWidget(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    MyText.Localcharities,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28)),
                    child: Column(
                      children: [
                        YourPlanFreeTrial2(
                          height: 110.h,
                          image: AppAssets.cancer,
                          color: AppColors.greyBox,
                          title: MyText.CancerResearchUK,
                          subTitle: MyText.Supportlifesavingcancerresearch,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          height: 110.h,
                          image: AppAssets.blueprint,
                          color: AppColors.greyBox,
                          title: MyText.BlueprintforAll,
                          subTitle: MyText.Workingwithdisadvantagedyoungpeople,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          image: AppAssets.mental,
                          color: AppColors.greyBox,
                          title: MyText.MentalHealthFoundation,
                          subTitle: MyText.Supportlifesavingcancer,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          image: AppAssets.united,
                          color: AppColors.greyBox,
                          title: MyText.UNWorldFoodProgramme,
                          subTitle: MyText.Supportlifesavingcancer,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          image: AppAssets.wikimedia,
                          color: AppColors.greyBox,
                          title: MyText.Wikimedia,
                          subTitle: MyText.OpenKnowledgeforall,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.Allcharities,
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
                  Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28)),
                    child: Column(
                      children: [
                        YourPlanFreeTrial2(
                          height: 110.h,
                          image: AppAssets.wish,
                          color: AppColors.greyBox,
                          title: MyText.MakeAWish,
                          subTitle: MyText.TransformLivesOneWishataTime,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          height: 110.h,
                          image: AppAssets.cancer,
                          color: AppColors.greyBox,
                          title: MyText.CancerResearchUK,
                          subTitle: MyText.Supportlifesavingcancerresearch,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                        YourPlanFreeTrial2(
                          height: 110.h,
                          image: AppAssets.emergency,
                          color: AppColors.greyBox,
                          title: MyText.EMERGENCY,
                          subTitle:
                              MyText.FreeSustainableHumanitarianHealthcare,
                          amount: MyText.amount,
                          textColor: AppColors.primaryText,
                          amountColor: AppColors.greyText2,
                        ),
                      ],
                    ),
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

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class DonationsAllCharities extends StatefulWidget {
  const DonationsAllCharities({super.key});

  @override
  State<DonationsAllCharities> createState() => _DonationsAllCharitiesState();
}

class _DonationsAllCharitiesState extends State<DonationsAllCharities> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.h,
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
          title: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyText.Allcharities,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                Text(
                  MyText.Suggestacharity,
                  style: TextStyle(
                      color: AppColors.greenText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 349.w,
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    children: [
                      YourPlanFreeTrial(
                        height: 110.h,
                        image: AppAssets.cancer,
                        color: AppColors.greyBox,
                        title: MyText.CancerResearchUK,
                        subTitle: MyText.Supportlifesavingcancerresearch,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        height: 110.h,
                        image: AppAssets.blueprint,
                        color: AppColors.greyBox,
                        title: MyText.BlueprintforAll,
                        subTitle: MyText.Workingwithdisadvantagedyoungpeople,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.mental,
                        color: AppColors.greyBox,
                        title: MyText.MentalHealthFoundation,
                        subTitle: MyText.Supportlifesavingcancer,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.united,
                        color: AppColors.greyBox,
                        title: MyText.UNWorldFoodProgramme,
                        subTitle: MyText.Supportlifesavingcancer,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.wikimedia,
                        color: AppColors.greyBox,
                        title: MyText.Wikimedia,
                        subTitle: MyText.OpenKnowledgeforall,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        height: 110.h,
                        image: AppAssets.wish,
                        color: AppColors.greyBox,
                        title: MyText.MakeAWish,
                        subTitle: MyText.TransformLivesOneWishataTime,
                        amount: MyText.amount,
                        textColor: AppColors.primaryText,
                        amountColor: AppColors.greyText2,
                      ),
                      YourPlanFreeTrial(
                        height: 110.h,
                        image: AppAssets.emergency,
                        color: AppColors.greyBox,
                        title: MyText.EMERGENCY,
                        subTitle: MyText.FreeSustainableHumanitarianHealthcare,
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
    );
  }
}

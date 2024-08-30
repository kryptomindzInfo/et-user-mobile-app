import 'package:flutter/cupertino.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class SeachesYourAccountWidget extends StatefulWidget {
  const SeachesYourAccountWidget({super.key});

  @override
  State<SeachesYourAccountWidget> createState() => _SeachesYourAccountWidgetState();
}

class _SeachesYourAccountWidgetState extends State<SeachesYourAccountWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.Youraccounts,
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
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(20)),
          height: 176.h,
          width: 350.w,
          child: Column(
            children: [
              YourPlanFreeTrial(
                image: AppAssets.ukImage,
                title: MyText.EUR,
                subTitle: MyText.BritishPound,
                color: AppColors.greyBox,
                textColor: AppColors.primaryText,
                button: Container(
                  height: 40.h,
                  width: 115.w,
                  child: ButtonWidget(
                      color: AppColors.yellowButton,
                      text: Text(
                        MyText.statement,
                        style: TextStyle(
                            color: themeController.bgColor.value,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {}),
                ),
              ),
              YourPlanFreeTrial(
                image: AppAssets.euro_image,
                title: MyText.EUR,
                subTitle: MyText.EURO,
                color: AppColors.greyBox,
                textColor: AppColors.primaryText,
                button: Container(
                  height: 40.h,
                  width: 115.w,
                  child: ButtonWidget(
                      color: AppColors.yellowButton,
                      text: Text(
                        MyText.statement,
                        style: TextStyle(
                            color: themeController.bgColor.value,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 34.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.Shops,
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
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(20)),
          height: 176.h,
          width: 350.w,
          child: Column(
            children: [
              AccountsWidget(
                image: AppAssets.raw_icon,
                title: MyText.GStarRaw,
                color: AppColors.greyBox,
                textColor: AppColors.primaryText,
              ),
              AccountsWidget(
                image: AppAssets.belstaff_icon,
                title: MyText.Belstaff,
                color: AppColors.greyBox,
                textColor: AppColors.primaryText,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 34.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.Revtagresults,
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
          height: 8,
        ),
        AccountsWidget(
          // height: 150.h,
          image: AppAssets.revtag_icon,
          title: MyText.ShowRevtagresults,
          subTitle: MyText.Peoplenotinyourcontacts,
          color: AppColors.greyBox,
          textColor: AppColors.primaryText,
        ),
      ],
    );
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/settings/settings_choosebank.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void spendFromBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            // color: AppColors.buttongrey,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 788.h,
        width: 390.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 23, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyText.Spendfrom,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 0, right: 0, bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                MyText.spendFromSubtitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    MyText.Cash,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  SizedBox(
                    width: 4.h,
                  ),
                  Image.asset(
                    AppAssets.exclamation_2x,
                    height: 15.h,
                    width: 15.w,
                    color: AppColors.primaryText,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                height: 272.h,
                width: 350.w,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsChoosebank()));
                      },
                      child: AccountsWidget(
                        image: AppAssets.card_icon_black,
                        imageheight: 43,
                        imagewidth: 43,
                        title: MyText.Allcashaccounts,
                        amount: MyText.amount,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsChoosebank()));
                      },
                      child: AccountsWidget(
                        imageColor: null,
                        image: AppAssets.gbp_image_round,
                        imageheight: 43,
                        imagewidth: 43,
                        subTitle: MyText.gbp,
                        amount: MyText.amount,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    AccountsWidget(
                      image: AppAssets.euro_image_round,
                      imageheight: 43,
                      imagewidth: 43,
                      title: MyText.EURO,
                      subTitle: MyText.EUR,
                      amount: MyText.amountinEuro,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 280.h,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.primaryButton,
                          text: Text(
                            MyText.Confirm,
                            style: TextStyle(
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.btnText),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

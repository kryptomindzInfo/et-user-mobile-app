import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/Iconbutton_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account/account_allaccounts.dart';
import 'package:et_bank/ui/screens/addAccount/addaccount_currencies_list.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/account_widget.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/allaccounts_widget.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());
void showAllAccountsModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.allBoxes,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 410.h,
        width: 390.w,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 11.0, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.Accounts,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    ImageButtonWidget(
                        padding: 5,
                        height: 15.h,
                        width: 15.w,
                        text: MyText.new1,
                        textStyle: TextStyle(
                            color: AppColors.btnText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                        image: AppAssets.addBlack,
                        color: AppColors.primaryButton,
                        onPressed: () {
                          Navigator.pop(context);
                          showCurrenciesListBottomSheet(context);
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Container(
                height: 250.h,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AccountAllAccouts()));
                            },
                            child: AllAccountWidget(
                              image: AppAssets.allAccounts,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          AccountWidget(
                            image: AppAssets.ukImage,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          AccountWidget(
                            image: AppAssets.ukImage,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          AccountWidget(
                            image: AppAssets.ukImage,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          AccountWidget(
                            image: AppAssets.ukImage,
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    },
  );
}

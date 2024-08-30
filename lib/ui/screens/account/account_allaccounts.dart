import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/Iconbutton_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/account/account_details.dart';
import 'package:et_bank/ui/screens/account/widgets/esim_widget.dart';
import 'package:et_bank/ui/screens/addAccount/addaccount_currencies_list.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/account_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountAllAccouts extends StatefulWidget {
  const AccountAllAccouts({super.key});

  @override
  State<AccountAllAccouts> createState() => _AccountAllAccoutsState();
}

class _AccountAllAccoutsState extends State<AccountAllAccouts> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        MyText.allAccounts,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Sora'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountDetails()));
                        },
                        child: AccountWidget(
                          image: AppAssets.ukImage,
                          color: AppColors.greyBox,
                          title: MyText.currencyshort9,
                          subTitle: MyText.BritishPound,
                          textColor: AppColors.primaryText,
                          amount: MyText.amount,
                        ),
                      ),
                      EsimWidget(
                        image: AppAssets.uk_esim_round,
                        internetDataColor: AppColors.primary,
                        title: MyText.BritishEsim,
                        subTitle: MyText.mobNo,
                        internetData: MyText.GB10Month,
                        activated: MyText.Activated,
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
                  child: Column(
                    children: [
                      AccountWidget(
                        image: AppAssets.euro_image,
                        color: AppColors.greyBox,
                        title: MyText.currencyshort9,
                        subTitle: MyText.EUROs,
                        textColor: AppColors.primaryText,
                        amount: MyText.amountinEuro,
                      ),
                      EsimWidget(
                        image: AppAssets.germany,
                        title: MyText.BritishEsim,
                        subTitle: MyText.mobNo,
                        internetData: MyText.GB10Month,
                        activated: MyText.Activated,
                      ),
                      EsimWidget(
                        image: AppAssets.italy,
                        title: MyText.BritishEsim,
                        subTitle: MyText.mobNo,
                        internetData: MyText.GB10Month,
                        activated: MyText.Activated,
                      ),
                      EsimWidget(
                        image: AppAssets.france,
                        title: MyText.BritishEsim,
                        subTitle: MyText.mobNo,
                        internetData: MyText.GB10Month,
                        activated: MyText.Activated,
                      ),
                      EsimWidget(
                        image: AppAssets.uk_esim_round,
                        title: MyText.BritishEsim,
                        subTitle: MyText.mobNo,
                        internetData: MyText.GB10Month,
                        activated: MyText.Activated,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                AccountWidget(
                  image: AppAssets.us_2x,
                  color: AppColors.greyBox,
                  title: MyText.currencyshort2,
                  subTitle: MyText.Dollar,
                  textColor: AppColors.primaryText,
                  amount: MyText.amountinDollars,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 50.h,
                  width: 350.w,
                  child: ImageButtonWidget(
                      padding: 5,
                      height: 16.h,
                      width: 16.w,
                      textStyle: TextStyle(),
                      image: AppAssets.addBlack,
                      color: AppColors.primary,
                      onPressed: () {
                        showCurrenciesListBottomSheet(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}

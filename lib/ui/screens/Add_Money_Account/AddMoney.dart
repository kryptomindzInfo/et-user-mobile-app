import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/Moneyaccountloading.dart';

import 'package:et_bank/ui/screens/Add_Money_Account/how%20to%20add%20money.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/widget/currencywidget.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppAssets.leftarrow,
                    width: 25.12.w,
                    height: 17.94.h,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  MyText.Addm,
                  style: MyTextStyles.sora5(
                      fontsize: 26.sp, color: AppColors.primaryText),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.icon_security,
                    width: 16.w,
                    height: 17.94.h,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    MyText.Yourmoney,
                    style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greenText,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CurrencyInputWidget3(
                gbpText: MyText.gbp,
                hintText: MyText.bal0,
                balanceText: MyText.bal,
                containerColor: AppColors.allBoxes,
                maxLimit: 100,
                exceededColor: AppColors.lightRed,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 349.w,
                height: 112.h,
                decoration: BoxDecoration(
                  color: AppColors.allBoxes,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                  child: ListTile(
                    leading: Image.asset(
                      AppAssets.getCard,
                      width: 42.w,
                      height: 42.h,
                    ),
                    title: Text(
                      MyText.Moneydebit,
                      style: MyTextStyles.sorafont(
                          fontsize: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      MyText.carddetail,
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Get.to(Howtoaddmoney());
                      },
                      child: Container(
                        width: 92.w,
                        height: 39.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70.r),
                          color: AppColors.yellowButton,
                        ),
                        child: Center(
                            child: Text(
                          MyText.cardchange,
                          style: MyTextStyles.sorafont(
                              fontsize: 16.sp,
                              color: AppColors.blackText,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: InkWell(
                      onTap: () {
                        Get.to(Moneyaccountloading());
                      },
                      child: btn(
                          cardText: MyText.cardsecurely,
                          cardWidth: 327.w,
                          cardHeight: 48.h),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

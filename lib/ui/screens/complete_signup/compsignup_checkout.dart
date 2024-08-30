import 'package:et_bank/controllers/complete_signup/compsignup_checkout_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/how%20to%20add%20money.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_loading.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/compsignup_checkout_firstcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupCheckOut extends StatefulWidget {
  CompSignupCheckOut({super.key});

  @override
  State<CompSignupCheckOut> createState() => _CompSignupCheckOutState();
}

class _CompSignupCheckOutState extends State<CompSignupCheckOut> {
  CompSignupCheckOutController compSignupCheckOutController =
      Get.put(CompSignupCheckOutController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      MyText.compSignupCheckOutTitle,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),

                // First Card

                Container(
                  width: 350.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.greyBox,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 13, 0),
                    child: Column(
                      children: [
                        CheckOutFirstCard(
                          card: MyText.compSignupCheckOutPlan,
                          price: MyText.compSignupCheckOutStandardFree,
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        CheckOutFirstCard(
                          card: MyText.compSignupCheckOutCard,
                          price: MyText.compSignupCheckOutStandardFree,
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        CheckOutFirstCard(
                          card: MyText.compSignupCheckOutAdditionalCard,
                          price: MyText.compSignupCheckOutPhysicalPrice,
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                // Second Card

                Container(
                  width: 350.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.greyBox,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 13, 0),
                    child: Column(
                      children: [
                        CheckOutFirstCard(
                          card: MyText.compSignupCheckOutAddmoney,
                          price: MyText.compSignupCheckOutmoney,
                        ),
                        SizedBox(
                          height: 26.h,
                        ),
                        Row(
                          children: [
                            ButtonWidget(
                                height: 29.h,
                                minwidth: 50.w,
                                color: compSignupCheckOutController
                                    .checkoutColor1.value,
                                text: Text(
                                  MyText.compSignupCheckOut0,
                                  style: TextStyle(
                                      color: compSignupCheckOutController
                                          .checkoutTextColor1.value,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                onPressed: () {
                                  compSignupCheckOutController
                                      .updateCheckoutPrice(1);
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                            ButtonWidget(
                                height: 29.h,
                                minwidth: 50.w,
                                color: compSignupCheckOutController
                                    .checkoutColor2.value,
                                text: Text(
                                  MyText.compSignupCheckOut10,
                                  style: TextStyle(
                                      color: compSignupCheckOutController
                                          .checkoutTextColor2.value,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                onPressed: () {
                                  compSignupCheckOutController
                                      .updateCheckoutPrice(2);
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                            ButtonWidget(
                                height: 29.h,
                                minwidth: 50.w,
                                color: compSignupCheckOutController
                                    .checkoutColor3.value,
                                text: Text(
                                  MyText.compSignupCheckOut20,
                                  style: TextStyle(
                                      color: compSignupCheckOutController
                                          .checkoutTextColor3.value,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                onPressed: () {
                                  compSignupCheckOutController
                                      .updateCheckoutPrice(3);
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                            ButtonWidget(
                                height: 29.h,
                                minwidth: 50.w,
                                color: compSignupCheckOutController
                                    .checkoutColor4.value,
                                text: Text(
                                  MyText.compSignupCheckOut50,
                                  style: TextStyle(
                                      color: compSignupCheckOutController
                                          .checkoutTextColor4.value,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                onPressed: () {
                                  compSignupCheckOutController
                                      .updateCheckoutPrice(4);
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                            ButtonWidget(
                                height: 29.h,
                                minwidth: 50.w,
                                color: compSignupCheckOutController
                                    .checkoutColor5.value,
                                text: Text(
                                  MyText.compSignupCheckOutother,
                                  style: TextStyle(
                                      color: compSignupCheckOutController
                                          .checkoutTextColor5.value,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                onPressed: () {
                                  compSignupCheckOutController
                                      .updateCheckoutPrice(5);
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 19.h,
                ),

                // Third Card

                Container(
                  width: 350.w,
                  height: 220.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.greyBox,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 13, 0),
                    child: Column(
                      children: [
                        CheckOutFirstCard(
                          card: MyText.compSignupCheckOutTotalAmount,
                          price: MyText.compSignupCheckOutamount,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 60.0),
                              child: Image.asset(
                                AppAssets.getCard,
                                height: 42.h,
                                width: 42.w,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.compSignupCheckDebitCard,
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'WorkSans'),
                                ),
                                Text(
                                  MyText.compSignupCheckOutCardDetails,
                                  style: TextStyle(
                                      color: AppColors.greyText2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'WorkSans'),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50.0),
                              child: ButtonWidget(
                                onPressed: () {
                                  Get.to(
                                    Howtoaddmoney(),
                                  );
                                },
                                height: 41.h,
                                minwidth: 58.h,
                                color: AppColors.disableButton,
                                borderRadius: 63,
                                text: Text(
                                  MyText.compSignupCheckOutChange,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
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
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: const Text(
                        MyText.compSignupCheckOutPay,
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompSignupLoading()));
                      }),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

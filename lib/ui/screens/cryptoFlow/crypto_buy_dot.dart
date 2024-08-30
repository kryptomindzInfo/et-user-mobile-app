import 'package:et_bank/controllers/crypto_flow/crypto_buy_dot_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_buy_dot_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoBuyDot extends StatefulWidget {
  CryptoBuyDot({super.key});

  @override
  State<CryptoBuyDot> createState() => _CryptoBuyDotState();
}

class _CryptoBuyDotState extends State<CryptoBuyDot> {
  final ThemeController themeController = Get.put(ThemeController());

  CryptoBuyDotController controller = Get.put(CryptoBuyDotController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 45.0, left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Obx(() {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        MyText.BuyDOT,
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                MyTextStyles.soraFamily),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(AppAssets.buyicon),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            MyText.DOT157122,
                                            style: TextStyle(
                                                color: AppColors
                                                    .primary,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: MyTextStyles
                                                    .worksansFamily),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  MyText.Marketorder,
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Image.asset(
                                  AppAssets.green_arrow_down,
                                  width: 13.w,
                                  height: 7.h,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 46.h,
                      ),
                      CryptoBuyDotWidget(
                        value: controller.selectedCurrency1.value,
                        onChanged: (value) {
                          controller.changeSelectedCurrency1(value!);
                        },
                        gbpText: MyText.gbp,
                        hintText: '+0',
                        balanceText: MyText.bal,
                        containerColor: AppColors.buttongrey,
                        maxLimit: 88,
                        exceededColor: AppColors.red,
                        feeText: 'after 0.023 DOT fee',
                      ),
                      CryptoBuyDotWidget(
                        value: controller.selectedCurrency2.value,
                        onChanged: (value) {
                          controller.changeSelectedCurrency2(value!);
                        },
                        gbpText: MyText.gbp,
                        hintText: '-\$0',
                        balanceText: MyText.bal,
                        containerColor: controller.exceedsBalance.value
                            ? AppColors.lightRed
                            : AppColors.buttongrey,
                        maxLimit: 88,
                        exceededColor: AppColors.red,
                        feeText: controller.exceedsBalance.value
                            ? 'exceeds Balance'
                            : '',
                        feeTextColor: Colors.red,
                        textFieldOnchanged: (value) {
                          if (value!.length > 2) {
                            controller.setExceedsBalance(true);
                          } else if (value.length <= 2) {
                            controller.setExceedsBalance(false);
                          }
                        },
                      ),
                    ],
                  );
                }),
                Positioned(
                    left: 150.w,
                    top: 215.h,
                    child: Image.asset(AppAssets.uparrow)),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                height: 120,
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 48.h,
                          width: 327.w,
                          child: ButtonWidget(
                              color: AppColors.primary,
                              text: const Text(
                                MyText.BuyDOTwithUSD,
                                style: TextStyle(
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             AccountDetailsDate()));
                              }),
                        ),
                      ),
                    ],
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

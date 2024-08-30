import 'package:et_bank/controllers/stockcontroller/stockbuytesla.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/buy_stock_confirmorder.dart';
import 'package:et_bank/ui/screens/stock/widget/stockbutteslawidget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class stockbuytesla extends StatefulWidget {
  stockbuytesla({super.key});

  @override
  State<stockbuytesla> createState() => _stockbuyteslaState();
}

class _stockbuyteslaState extends State<stockbuytesla> {
  StockBuyteslaController controller = Get.put(StockBuyteslaController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 15.0, left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
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
                                child: Container(
                                  width: 25.12.w,
                                  height: 17.94.h,
                                  child: Image.asset(
                                    AppAssets.leftarrow,
                                    width: 25.12.w,
                                    height: 17.94.h,
                                    color: AppColors.primaryText,
                                  ),
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
                                      "Buy TSLA",
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: MyTextStyles.soraFamily),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(AppAssets.buyicon),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "1TSLA = \$1.13337",
                                          style: TextStyle(
                                              color:
                                                  AppColors.greenText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily:
                                                  MyTextStyles.worksansFamily),
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
                                    color: AppColors.greenText,
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
                      height: 26.h,
                    ),
                    StockBuyDotWidget(
                      value: controller.selectedCurrency1.value,
                      onChanged: (value) {
                        controller.changeSelectedCurrency1(value!);
                      },
                      gbpText: MyText.gbp,
                      hintText: '\+0',
                      balanceText: MyText.bal,
                      containerColor: controller.exceedsBalance.value
                          ? AppColors.lightRed
                          : AppColors.greyBox,
                      maxLimit: 88,
                      exceededColor: AppColors.red,
                      feeText: controller.exceedsBalance.value
                          ? 'exceeds Balance'
                          : 'after 0.023 TSLA fee',
                      feeTextColor: controller.exceedsBalance.value
                          ? Colors.red
                          : AppColors.greyText2,
                      textFieldOnchanged: (value) {
                        if (value!.length > 2) {
                          controller.setExceedsBalance(true);
                        } else if (value.length <= 2) {
                          controller.setExceedsBalance(false);
                        }
                      },
                    ),
                    StockBuyDotWidget(
                      value: controller.selectedCurrency2.value,
                      onChanged: (value) {
                        controller.changeSelectedCurrency2(value!);
                      },
                      gbpText: MyText.gbp,
                      hintText: '-\$0',
                      balanceText: MyText.bal,
                      containerColor: controller.exceedsBalance2.value
                          ? AppColors.lightRed
                          : AppColors.greyBox,
                      maxLimit: 88,
                      exceededColor: AppColors.red,
                      feeText: controller.exceedsBalance2.value
                          ? 'exceeds Balance'
                          : 'after 0.023 TSLA fee',
                      feeTextColor: controller.exceedsBalance2.value
                          ? Colors.red
                          : AppColors.greyText2,
                      textFieldOnchanged: (value) {
                        if (value!.length > 2) {
                          controller.setExceedsBalance2(true);
                        } else if (value.length <= 2) {
                          controller.setExceedsBalance2(false);
                        }
                      },
                    ),
                  ],
                ),
                Positioned(
                    left: 150.w,
                    top: 195.h,
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
                              color: AppColors.greenText,
                              text: const Text(
                                "Buy TSLA with USD",
                                style: TextStyle(
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BuystockConfirmOrder()));
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

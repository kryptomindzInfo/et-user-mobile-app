import 'package:et_bank/controllers/crypto_flow/crypto_polkadot_controller.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_candle_stick_graph_widget.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_buy_collection_graph.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_graph_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
class PolkaDotOverviewWidget extends StatefulWidget {

  PolkaDotOverviewWidget({super.key});

  @override
  State<PolkaDotOverviewWidget> createState() => _PolkaDotOverviewWidgetState();
}

class _PolkaDotOverviewWidgetState extends State<PolkaDotOverviewWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  CryptoPolkaDotController controller = Get.put(CryptoPolkaDotController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      decoration: BoxDecoration(
          color: AppColors.greyBox, borderRadius: BorderRadius.circular(28)),
      child: Obx(() {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 32,
                right: 16,
                bottom: 14,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.a45622,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        InkWell(
                          onTap: () {
                            controller.changeSparkLineChart();
                          },
                          child: Container(
                            height: 39.h,
                            width: 57.w,
                            decoration: BoxDecoration(
                                color: AppColors.regularIcon.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(70)),
                            child: Image.asset(
                              controller.sparkLineChart.value == true
                                  ? AppAssets.graph21x
                                  : AppAssets.graph2button,
                                  color: AppColors.primaryText,
                              height: 22,
                              width: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Text(
                          MyText.a0036,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Image.asset(
                          AppAssets.coin_up,
                          width: 10.w,
                          height: 12,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          MyText.a081,
                          style: TextStyle(
                              color: AppColors.coinup,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        Text(
                          MyText.Today,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    controller.sparkLineChart.value == true
                        ? Row(
                            children: [
                              Container(
                                  height: 180.h,
                                  width: 250.w,
                                  child: BuyCollectionGraph()),
                              SizedBox(
                                width: 8.w,
                              ),
                              Container(
                                height: 150.h,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4.572',
                                      style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    Text(
                                      '4.572',
                                      style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    Text(
                                      '4.572',
                                      style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    Text(
                                      '4.572',
                                      style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Container(
                            height: 213.h,
                            width: 350.w,
                            child: CandleStickGraph()),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 0, right: 10, bottom: 16),
              child: CryptoGraphButtons(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                textAlign: TextAlign.center,
                MyText.Datadisplayedisindicative,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        );
      }),
    );
  }
}

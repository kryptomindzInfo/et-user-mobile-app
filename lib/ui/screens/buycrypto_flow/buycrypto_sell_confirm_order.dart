import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_polkadotstaking.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/confirm_order_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyCryptoSellConfirmOrder extends StatefulWidget {
  BuyCryptoSellConfirmOrder({super.key});

  @override
  State<BuyCryptoSellConfirmOrder> createState() =>
      _BuyCryptoSellConfirmOrderState();
}

class _BuyCryptoSellConfirmOrderState extends State<BuyCryptoSellConfirmOrder> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
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
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyText.n2p,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        Text(
                          MyText.Sell005DOT,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                    Image.asset(
                      AppAssets.DOT,
                      height: 58.h,
                      width: 58.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                ConfirmOrderStatsWidget(
                  amountval: MyText.DOT005,
                  exchangeval: MyText.a022,
                  feesval: MyText.Nofees,
                  estimatedTotalProceedVal: MyText.a022,
                ),
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
                height: 175,
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 327.w,
                        child: Text(
                          textAlign: TextAlign.center,
                          MyText.Cryptocurrencypricesarevolatile,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Center(
                        child: SizedBox(
                          height: 48.h,
                          width: 327.w,
                          child: ButtonWidget(
                              color: AppColors.primaryButton,
                              text: const Text(
                                MyText.Confirmorder,
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
                                            BuyCryptoPolkaDotStaking()));
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

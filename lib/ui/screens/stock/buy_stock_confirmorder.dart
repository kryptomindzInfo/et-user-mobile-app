import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/confirm_order_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuystockConfirmOrder extends StatefulWidget {
  BuystockConfirmOrder({super.key});

  @override
  State<BuystockConfirmOrder> createState() => _BuystockConfirmOrderState();
}

class _BuystockConfirmOrderState extends State<BuystockConfirmOrder> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        Text(
                          "-\$2",
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                      ],
                    ),
                    Container(
                      width: 55.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                          child: Image.asset(
                        AppAssets.Tesla,
                        width: 43.12.w,
                        height: 42.84.h,
                      )),
                    ),
                  ],
                ),
                Text(
                  "Buy 0.11144238 TSLA",
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 32.h,
                ),
                ConfirmOrderStatsWidget(
                  amountval: "\$2",
                  priceval: "1TSLA = \$4.5764",
                  noofshare: "No. of Shares",
                  exchangeval: "0.08",
                  DayTradesleft: "Day Trades left",
                  feesval: "03/03",
                  estimatedTotalProceedVal: "0.11144238 TSLA",
                )
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
                      Text(
                        MyText.stockpricesarevolatile,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Center(
                        child: SizedBox(
                          height: 48.h,
                          width: 327.w,
                          child: ButtonWidget(
                              color: AppColors.primary,
                              text: const Text(
                                MyText.Confirmorder,
                                style: TextStyle(
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {}),
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

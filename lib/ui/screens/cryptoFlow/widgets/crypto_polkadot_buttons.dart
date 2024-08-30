import 'package:et_bank/controllers/crypto_flow/crypto_polkadot_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoPolkaDotButtons extends StatefulWidget {
  CryptoPolkaDotButtons({super.key});

  @override
  State<CryptoPolkaDotButtons> createState() => _CryptoPolkaDotButtonsState();
}

class _CryptoPolkaDotButtonsState extends State<CryptoPolkaDotButtons> {
  CryptoPolkaDotController controller = Get.put(CryptoPolkaDotController());
  final ThemeController themeController = Get.put(ThemeController());

  final ScrollController _scrollController = ScrollController();

  double buttonwidth = 103.w;

  double buttonHeight = 41.h;

  @override
  void dispose() {
    controller.setscrollToTheEndValue(false);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.scrollToTheEnd.value) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 327.w,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
      // color: AppColors.DarkGrey,
          // color: themeController.bgColor.value,
          borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Obx(() {
          return SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: buttonwidth,
                  height: buttonHeight,
                  child: ButtonWidget(
                      color: controller.getoverviewButtonColor(),
                      text: Center(
                        child: Text(
                          MyText.Overview,
                          style: TextStyle(
                              color: controller.getoverviewButtonTextColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      onPressed: () {
                        controller.setoverviewValueTrue();
                      }),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: buttonwidth,
                  height: buttonHeight,
                  child: ButtonWidget(
                      color: controller.getstakingButtonColor(),
                      text: Center(
                        child: Text(
                          MyText.Staking,
                          style: TextStyle(
                              color: controller.getstakingButtonTextColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      onPressed: () {
                        controller.setstakingValueTrue();
                      }),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: buttonwidth,
                  height: buttonHeight,
                  child: ButtonWidget(
                      color: controller.getnewsButtonColor(),
                      text: Center(
                        child: Text(
                          MyText.News,
                          style: TextStyle(
                              color: controller.getnewsButtonTextColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      onPressed: () {
                        controller.setnewsValueTrue();
                      }),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: buttonwidth,
                  height: buttonHeight,
                  child: ButtonWidget(
                      color: controller.getordersButtonColor(),
                      text: Center(
                        child: Text(
                          MyText.Orders,
                          style: TextStyle(
                              color: controller.getordersButtonTextColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      onPressed: () {
                        controller.setordersValueTrue();
                      }),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: buttonwidth,
                  height: buttonHeight,
                  child: ButtonWidget(
                      color: controller.gettransactionButtonColor(),
                      text: Center(
                        child: Text(
                          MyText.Transaction,
                          style: TextStyle(
                              color: controller.gettransactionButtonTextColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                      onPressed: () {
                        controller.settransactionValueTrue();
                      }),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

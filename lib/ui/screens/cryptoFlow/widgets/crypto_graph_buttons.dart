import 'package:et_bank/controllers/crypto_flow/crypto_buy_collection_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoGraphButtons extends StatefulWidget {
  CryptoGraphButtons({super.key});

  @override
  State<CryptoGraphButtons> createState() => _CryptoGraphButtonsState();
}

class _CryptoGraphButtonsState extends State<CryptoGraphButtons> {
  final ThemeController themeController = Get.put(ThemeController());

  CryptoBuyCollectionController controller =
      Get.put(CryptoBuyCollectionController());

  double buttonwidth = 48.w;

  double buttonHeight = 41.h;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.h,
      width: 327.w,
      decoration: BoxDecoration(
          color: themeController.bgColor.value,
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.getd1ButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.d1,
                        style: TextStyle(
                            color: controller.getd1ButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.setd1ValueTrue();
                    }),
              ),
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.getw1ButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.w1,
                        style: TextStyle(
                            color: controller.getw1ButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.setw1ValueTrue();
                    }),
              ),
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.getm1ButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.m1,
                        style: TextStyle(
                            color: controller.getm1ButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.setm1ValueTrue();
                    }),
              ),
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.getm6ButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.m6,
                        style: TextStyle(
                            color: controller.getm6ButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.setm6ValueTrue();
                    }),
              ),
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.gety1ButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.y1,
                        style: TextStyle(
                            color: controller.gety1ButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.sety1ValueTrue();
                    }),
              ),
              Container(
                width: buttonwidth,
                height: buttonHeight,
                child: ButtonWidget(
                    color: controller.getallButtonColor(),
                    text: Center(
                      child: Text(
                        MyText.all,
                        style: TextStyle(
                            color: controller.getallButtonTextColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    onPressed: () {
                      controller.setallValueTrue();
                    }),
              ),
            ],
          );
        }),
      ),
    );
  }
}

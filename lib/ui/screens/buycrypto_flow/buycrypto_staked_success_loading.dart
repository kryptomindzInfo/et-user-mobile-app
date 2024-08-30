import 'package:et_bank/controllers/crypto_flow/crypto_polkadot_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_polkadot_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void buyCryptoStakedSuccessfulLoading(BuildContext context) {
  final ThemeController themeController = Get.put(ThemeController());
  CryptoPolkaDotController controller = Get.put(CryptoPolkaDotController());

  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 2), () {
        controller.setstakingValueTrue();
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => CryptoPolkaDotOverView(),
        ));
      });
      return Obx(
        () => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 300.h,
            width: 390.w,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 11.0, left: 41, right: 20, bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    height: 104.h,
                    width: 104.w,
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                      strokeWidth: 2,
                    ),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  Container(
                    width: 205.w,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '0.11143756 DOT ',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily,
                            ),
                          ),
                          TextSpan(
                            text: 'staked successfully',
                            style: TextStyle(
                              color: themeController.bgColor.value,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

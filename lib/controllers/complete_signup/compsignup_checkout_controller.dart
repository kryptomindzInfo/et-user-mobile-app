import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompSignupCheckOutController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxInt checkoutPrice = 1.obs;

  Rx<Color> get checkoutColor1 =>
      checkoutPrice.value == 1 ? AppColors.primaryButton.obs : AppColors.disableButton.obs;

  Rx<Color> get checkoutColor2 =>
      checkoutPrice.value == 2 ? AppColors.primaryButton.obs : AppColors.disableButton.obs;
  Rx<Color> get checkoutColor3 =>
      checkoutPrice.value == 3 ? AppColors.primaryButton.obs : AppColors.disableButton.obs;
  Rx<Color> get checkoutColor4 =>
      checkoutPrice.value == 4 ? AppColors.primaryButton.obs : AppColors.disableButton.obs;
  Rx<Color> get checkoutColor5 =>
      checkoutPrice.value == 5 ? AppColors.primaryButton.obs : AppColors.disableButton.obs;

  Rx<Color> get checkoutTextColor1 => checkoutPrice.value == 1
      ? themeController.bgColor.value.obs
      : AppColors.primaryText.obs;

  Rx<Color> get checkoutTextColor2 => checkoutPrice.value == 2
      ? themeController.bgColor.value.obs
      : AppColors.primaryText.obs;
  Rx<Color> get checkoutTextColor3 => checkoutPrice.value == 3
      ? themeController.bgColor.value.obs
      : AppColors.primaryText.obs;
  Rx<Color> get checkoutTextColor4 => checkoutPrice.value == 4
      ? themeController.bgColor.value.obs
      : AppColors.primaryText.obs;
  Rx<Color> get checkoutTextColor5 => checkoutPrice.value == 5
      ? themeController.bgColor.value.obs
      : AppColors.primaryText.obs;

  void updateCheckoutPrice(int newPrice) {
    checkoutPrice.value = newPrice;
  }
}

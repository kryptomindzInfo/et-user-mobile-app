
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OneTimeDonation extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString selectedCurrency = 'DOT'.obs;
  RxInt currencyValue = 0.obs;
  RxBool redAlert = false.obs;

  void changeSelectedCurrency(String currency) {
    selectedCurrency.value = currency;
  }

  void setRedAlert(bool value) {
    redAlert.value = value;
  }

  Color buttonColor() {
    return currencyValue.value == 0
        ? AppColors.buttonDisabledTextColor
        : AppColors.primary;
  }

  Color buttonTextColor() {
    return currencyValue.value == 0
        ? AppColors.childDarkText
        : themeController.bgColor.value;
  }
}

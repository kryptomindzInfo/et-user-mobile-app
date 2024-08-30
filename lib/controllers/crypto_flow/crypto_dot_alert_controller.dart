import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoDotAlertController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString selectedCurrency = 'DOT'.obs;
  RxInt currencyValue = 0.obs;

  void changeSelectedCurrency(String currency) {
    selectedCurrency.value = currency;
  }

  Color buttonColor() {
    return currencyValue.value == 0
        ? AppColors.disableButton
        : AppColors.primaryButton;
  }

  Color buttonTextColor() {
    return currencyValue.value == 0
        ? AppColors.disableBtnText
        : AppColors.btnText;
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class ChangeIconController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());
  RxInt accountSelected = 1.obs;

  void setAccountSelected(int value) {
    accountSelected.value = value;
  }

  Color ColorStandardAccount() {
    return accountSelected.value == 1
        ? AppColors.primaryButton
        : AppColors.greyBox;
  }

  Color ColorPremiunAccount() {
    return accountSelected.value == 2
        ? AppColors.primaryButton
        : AppColors.greyBox;
  }

  Color ColorUltraAccount() {
    return accountSelected.value == 3
        ? AppColors.primaryButton
        : AppColors.greyBox;
  }
}

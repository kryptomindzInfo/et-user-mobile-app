import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoDiscoverController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool topGainers = true.obs;

  settopGainersValue(bool value) {
    topGainers.value = value;
  }

  Color gettopGainersButtonColor() {
    return topGainers.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color gettopLosersButtonColor() {
    return topGainers.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color gettopGainersButtonTextColor() {
    return topGainers.value == true
        ? AppColors.blackColor
        : AppColors.white;
  }

  Color gettopLosersButtonTextColor() {
    return topGainers.value == true
        ? AppColors.white
        : AppColors.blackColor;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

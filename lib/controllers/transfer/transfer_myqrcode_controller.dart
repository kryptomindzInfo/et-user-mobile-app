import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferMyQRCodeController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool Scan = false.obs;

  setPastValue(bool value) {
    Scan.value = value;
  }

  Color getScanButtonColor() {
    return Scan.value == true ? AppColors.white : AppColors.qrbgcolor;
  }

  Color getMyCodeButtonColor() {
    return Scan.value == false ? AppColors.white : AppColors.qrbgcolor;
  }

  Color getScanButtonTextColor() {
    return Scan.value == true ? themeController.bgColor.value : AppColors.grey;
  }

  Color getMyCodeButtonTextColor() {
    return Scan.value == true ? AppColors.grey : themeController.bgColor.value;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

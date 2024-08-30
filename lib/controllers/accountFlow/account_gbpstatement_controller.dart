import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountGBPStatementController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool pdf = true.obs;

  setLocalValue(bool value) {
    pdf.value = value;
  }

  Color getPdfButtonColor() {
    return pdf.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getExcelButtonColor() {
    return pdf.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getPdfButtonTextColor() {
    return pdf.value == true ? AppColors.activetabText : AppColors.inactivetabText;
  }

  Color getExcelButtonTextColor() {
    return pdf.value == true ? AppColors.inactivetabText : AppColors.activetabText;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupEmailController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString Email = ''.obs;

  setEmail(String value) {
    Email.value = value;
  }

  Color ButtonColor() {
    return Email.value != '' ? AppColors.primaryButton : AppColors.disableButton;
  }

  Color ButtonTextColor() {
    return Email.value != ''
        ? AppColors.btnText
        : AppColors.disableBtnText;
  }
}

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninCodeController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString code = ''.obs;

  Color getButtonColor() {
    return code == '' ? AppColors.disableButton: AppColors.primaryButton;
  }

  Color getButtonTextColor() {
    return code == ''
        ? AppColors.disableBtnText
        : AppColors.btnText;
  }
}

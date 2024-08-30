import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

class SigninMobileNoController extends GetxController {
  RxString mobileNo = ''.obs;

  Color getButtonColor() {
    return mobileNo == ''
        ? AppColors.disableButton
        : AppColors.primaryButton;
  }

  Color getButtonTextColor() {
    return mobileNo == ''
        ? AppColors.disableBtnText
        : AppColors.btnText;
  }
}

import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CompSignupBankUsedForController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());
  List<int> selectedChips = [];

  selectChips(int value) {
    if (selectedChips.contains(value)) {
      selectedChips.remove(value);
    } else {
      selectedChips.add(value);
    }
    update();
  }

  Color getBackgroundColor(int value) {
    return selectedChips.contains(value)
        ? AppColors.primaryButton
        : AppColors.greyBox;
  }
  Color getTextColor(int value) {
    return selectedChips.contains(value)
        ? AppColors.blackColor
        : AppColors.primaryText;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

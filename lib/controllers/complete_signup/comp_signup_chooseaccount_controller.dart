import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CompSignupBankChooseAccountController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxInt accountSelected = 1.obs;

  void setAccountSelected(int value) {
    accountSelected.value = value;
  }

  // Get Standard Card

  Color cardBackgroundColorStandardAccount() {
    return accountSelected.value == 1 ? AppColors.greenBox : AppColors.greyBox;
  }
  Color cardBorderColorStandardAccount() {
    return accountSelected.value == 1 ? AppColors.greyBox2 : Color(0x000C2227);
  }

  Color textBackgroundColorStandardAccount() {
    return accountSelected.value == 1 ? AppColors.blackColor : AppColors.primaryText;
  }

  Color getStandardButtonColorStandardAccount() {
    return accountSelected.value == 1
        ? AppColors.yellowButton3
        : AppColors.grey;
  }

  Color getAdditionalCardButtonColorStandardAccount() {
    return accountSelected.value == 1 ? AppColors.white : AppColors.buttongrey;
  }

  // Get Pro Card

  Color cardBackgroundColorProAccount() {
    return accountSelected.value == 2 ? AppColors.greenBox : AppColors.greyBox;
  }
  Color cardBorderColorProAccount() {
    return accountSelected.value == 2 ? AppColors.greyBox2 : Color(0x000C2227);
  }

  Color textBackgroundColorProAccount() {
    return accountSelected.value == 2 ? AppColors.blackColor : AppColors.primaryText;
  }

  Color getProButtonColorProAccount() {
    return accountSelected.value == 2
        ? AppColors.yellowButton3
        : AppColors.grey;
  }

  // Get Ultra Card

  Color cardBackgroundColorUltraAccount() {
    return accountSelected.value == 3 ? AppColors.greenBox : AppColors.greyBox;
  }
  Color cardBorderColorUltraAccount() {
    return accountSelected.value == 3 ? AppColors.greyBox2 : Color(0x000C2227);
  }

  Color textBackgroundColorUltraAccount() {
    return accountSelected.value == 3 ? AppColors.blackColor : AppColors.primaryText;
  }

  Color getUltraButtonColorUltraAccount() {
    return accountSelected.value == 3
        ? AppColors.yellowButton3
        : AppColors.grey;
  }
}

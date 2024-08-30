import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountDetailsFlowAccountDetailsController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool individual = true.obs;
  RxBool accountNoValidate = true.obs;
  RxBool firstTimeTransfer = true.obs;

  setFirstTimeTransfer(bool value) {
    firstTimeTransfer.value = value;
  }

  setindividualValue(bool value) {
    individual.value = value;
  }

  setaccountNoValidate(bool value) {
    accountNoValidate.value = value;
  }

  Color getindividualButtonColor() {
    return individual.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons1;
  }

  Color getbuisnessButtonColor() {
    return individual.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons1;
  }

  Color getindividualButtonTextColor() {
    return individual.value == true
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  Color getbuisnessButtonTextColor() {
    return individual.value == false
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

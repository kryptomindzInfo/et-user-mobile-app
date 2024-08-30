import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewTransferController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool Past = true.obs;

  setPastValue(bool value) {
    Past.value = value;
  }

  Color getPastButtonColor() {
    return Past.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons1;
  }

  Color getupcomingButtonColor() {
    return Past.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons1;
  }

  Color getPastButtonTextColor() {
    return Past.value == true ? AppColors.activetabText : AppColors.inactivetabText;
  }

  Color getupcomingButtonTextColor() {
    return Past.value == true ? AppColors.inactivetabText : AppColors.activetabText;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

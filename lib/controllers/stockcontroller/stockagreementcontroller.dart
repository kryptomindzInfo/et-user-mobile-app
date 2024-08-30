import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgreementController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());
  var isOpenButtonTapped = <bool>[].obs;
  final dataAgreementList = [
    "Term of use",
    "Customer agreement",
    "Limited Purpose\nmargin agreement",
    "Fractional shares\ndisclosure",
    "Privacy Policy"
  ].obs;

  @override
  void onInit() {
    // Initialize the list with false for each item
    isOpenButtonTapped.assignAll(List.filled(dataAgreementList.length, false));
    super.onInit();
  }

  void toggleButton(int index) {
    isOpenButtonTapped[index] = !isOpenButtonTapped[index];
  }

  var isChecked = false.obs;

  void toggle(bool value) {
    isChecked.value = value;
  }

  Color getButtonColor() {
    bool areAllTogglesSelected = isOpenButtonTapped.every((isOpen) => isOpen);
    bool isCheckBoxChecked = isChecked.value;

    return areAllTogglesSelected && isCheckBoxChecked
        ? AppColors.primary
        : AppColors.buttonDisabledTextColor;
  }
}

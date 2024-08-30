import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupHomeAddressController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString postCodeText = 'Post Code'.obs;
  RxString Addressline01Text = ''.obs;
  RxString CityText = ''.obs;

  setDOB(String value) {
    postCodeText.value = value;
  }

  Color setButtonColor() {
    return postCodeText.value != 'Post Code' &&
            Addressline01Text.value != '' &&
            CityText.value != ''
        ? AppColors.primaryButton
        : AppColors.disableButton;
  }

  Color setButtonTextColor() {
    return postCodeText.value != 'Post Code' &&
            Addressline01Text.value != '' &&
            CityText.value != ''
        ? themeController.bgColor.value
        : AppColors.buttonDisabledTextColor;
  }

  Color setpostCodeTextColor() {
    return postCodeText.value == 'Post Code' ? AppColors.greyText2 : AppColors.primaryText;
  }
}

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxString selectedCountry = ''.obs;
  RxString selectedCountryCode = 'Algeria'.obs;
  RxString selectedCountrySignin = ''.obs;
  RxBool isChecked = false.obs;
  get filteredCountries => null;
  RxString mobileNo = ''.obs;

  void changeSelectedCountry(String countryName) {
    selectedCountry.value = countryName;
  }

  Color getSignupButtonColor() {
    return mobileNo.value == '' ? AppColors.disableButton: AppColors.primaryButton;
  }

  Color getSignupButtonTextColor() {
    return mobileNo.value == ''
        ? AppColors.disableBtnText
        : AppColors.btnText;
  }

  void setSearchText(String value) {}

  void selectCountry(country) {}
}

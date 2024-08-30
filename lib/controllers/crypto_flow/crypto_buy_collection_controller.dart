import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoBuyCollectionController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool d1 = true.obs;
  RxBool w1 = false.obs;
  RxBool m1 = false.obs;
  RxBool m6 = false.obs;
  RxBool y1 = false.obs;
  RxBool all = false.obs;

  setd1ValueTrue() {
    d1.value = true;
    w1.value = false;
    m1.value = false;
    m6.value = false;
    y1.value = false;
    all.value = false;
  }

  setw1ValueTrue() {
    d1.value = false;
    w1.value = true;
    m1.value = false;
    m6.value = false;
    y1.value = false;
    all.value = false;
  }

  setm1ValueTrue() {
    d1.value = false;
    w1.value = false;
    m1.value = true;
    m6.value = false;
    y1.value = false;
    all.value = false;
  }

  setm6ValueTrue() {
    d1.value = false;
    w1.value = false;
    m1.value = false;
    m6.value = true;
    y1.value = false;
    all.value = false;
  }

  sety1ValueTrue() {
    d1.value = false;
    w1.value = false;
    m1.value = false;
    m6.value = false;
    y1.value = true;
    all.value = false;
  }

  setallValueTrue() {
    d1.value = false;
    w1.value = false;
    m1.value = false;
    m6.value = false;
    y1.value = false;
    all.value = true;
  }

  Color getd1ButtonColor() {
    return d1.value == true
        ? AppColors.greyText2 
        : themeController.bgColor.value;
  }

  Color getw1ButtonColor() {
    return w1.value == true
        ? AppColors.greyText2
        : themeController.bgColor.value;
  }

  Color getm1ButtonColor() {
    return m1.value == true
        ? AppColors.greyText2
        : themeController.bgColor.value;
  }

  Color getm6ButtonColor() {
    return m6.value == true
        ? AppColors.greyText2
        : themeController.bgColor.value;
  }

  Color gety1ButtonColor() {
    return y1.value == true
        ? AppColors.greyText2
        : themeController.bgColor.value;
  }

  Color getallButtonColor() {
    return all.value == true
        ? AppColors.greyText2
        : themeController.bgColor.value;
  }

  Color getd1ButtonTextColor() {
    return d1.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  Color getw1ButtonTextColor() {
    return w1.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  Color getm1ButtonTextColor() {
    return m1.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  Color getm6ButtonTextColor() {
    return m6.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  Color gety1ButtonTextColor() {
    return y1.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  Color getallButtonTextColor() {
    return all.value == true
        ? themeController.bgColor.value
        : AppColors.greyText2;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

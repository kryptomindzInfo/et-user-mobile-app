import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoPolkaDotController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool overview = true.obs;
  RxBool staking = false.obs;
  RxBool news = false.obs;
  RxBool orders = false.obs;
  RxBool transaction = false.obs;

  RxBool sparkLineChart = true.obs;
  RxBool scrollToTheEnd = false.obs;

  setscrollToTheEndValue(bool value) {
    scrollToTheEnd.value = value;
  }

  changeSparkLineChart() {
    sparkLineChart.value = !sparkLineChart.value;
  }

  setoverviewValueTrue() {
    overview.value = true;
    staking.value = false;
    news.value = false;
    orders.value = false;
    transaction.value = false;
  }

  setstakingValueTrue() {
    overview.value = false;
    staking.value = true;
    news.value = false;
    orders.value = false;
    transaction.value = false;
  }

  setnewsValueTrue() {
    overview.value = false;
    staking.value = false;
    news.value = true;
    orders.value = false;
    transaction.value = false;
  }

  setordersValueTrue() {
    overview.value = false;
    staking.value = false;
    news.value = false;
    orders.value = true;
    transaction.value = false;
  }

  settransactionValueTrue() {
    overview.value = false;
    staking.value = false;
    news.value = false;
    orders.value = false;
    transaction.value = true;
  }

  setValueTrue() {
    overview.value = false;
    staking.value = false;
    news.value = false;
    orders.value = false;
    transaction.value = false;
  }

  Color getoverviewButtonColor() {
    return overview.value == true ? AppColors.activeTabButtons : AppColors.greyBox;
  }

  Color getstakingButtonColor() {
    return staking.value == true ? AppColors.activeTabButtons : AppColors.greyBox;
  }

  Color getnewsButtonColor() {
    return news.value == true ? AppColors.activeTabButtons : AppColors.greyBox;
  }

  Color getordersButtonColor() {
    return orders.value == true ? AppColors.activeTabButtons : AppColors.greyBox;
  }

  Color gettransactionButtonColor() {
    return transaction.value == true ? AppColors.activeTabButtons : AppColors.greyBox;
  }

  Color getoverviewButtonTextColor() {
    return overview.value == true
        ? AppColors.activetabText
        : AppColors.greyText2;
  }

  Color getstakingButtonTextColor() {
    return staking.value == true
        ? AppColors.activetabText
        : AppColors.greyText2;
  }

  Color getnewsButtonTextColor() {
    return news.value == true
        ? AppColors.activetabText
        : AppColors.greyText2;
  }

  Color getordersButtonTextColor() {
    return orders.value == true
        ? AppColors.activetabText
        : AppColors.greyText2;
  }

  Color gettransactionButtonTextColor() {
    return transaction.value == true
        ? AppColors.activetabText
        : AppColors.greyText2;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

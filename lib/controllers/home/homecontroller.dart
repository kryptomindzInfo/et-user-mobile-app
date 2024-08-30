import 'package:et_bank/ui/resources/constant/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class ListController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedIndex2 = 0.obs;
  RxInt selectedIndexana = 0.obs;

  final List<String> textItems = ['Accounts', 'Cards', 'Linked', 'Others'];
  final List<String> textItems2 = [
    'Overview',
    'Daily Streak',
    'Transfer',
    'Invest',
  ];
  final List<String> Analytics = [
    'General',
    'Expenses',
    'Income',
  ];

  Color getPageIndicatorColor(int index) {
    return index == selectedIndex.value
        ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons2;
  }

  Color getPageIndicatorColor2(int index) {
    return index == selectedIndex2.value
        ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons1;
  }

  Color getItemTextColor(int index) {
    return index == selectedIndex.value
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  Color getItemTextColor2(int index) {
    return index == selectedIndex2.value
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  Color getPageIndicatorColorAna(int index) {
    return index == selectedIndexana.value
       ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons1;
  }

  Color getItemTextColorana(int index) {
    return index == selectedIndexana.value
                ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  void selectItem(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;

      update();
    }
  }

  void selectItem2(int index) {
    if (index != selectedIndex2.value) {
      selectedIndex2.value = index;

      update();
    }
  }

  void selectItemana(int index) {
    if (index != selectedIndexana.value) {
      selectedIndexana.value = index;

      update();
    }
  }
}

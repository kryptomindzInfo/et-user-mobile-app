import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class AnalyticsController extends GetxController {
  RxInt selectedIndexana = 0.obs;

  RxInt selectedIndexanadays = 0.obs;
  final List<String> Analytics = [
    'General',
    'Expenses',
    'Income',
  ];

  final List<String> Analyticsdays = [
    'By year',
    'By month',
    'By week',
    'By day'
  ];
  Color getPageIndicatorColorAnadays(int index) {
    return index == selectedIndexanadays.value
        ? AppColors.yellowButton2
        : AppColors.inActiveTabButtons3;
  }

  Color getPageIndicatorTextColorAnadays(int index) {
    return index == selectedIndexanadays.value
        ? AppColors.activetabText2
        : AppColors.primaryText;
  }

  Color getPageIndicatorColorAnadaysblack(int index) {
    return index == selectedIndexanadays.value
        ? AppColors.yellowButton2
        : AppColors.inActiveTabButtons3;
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

  Color getItemTextColoranaday(int index) {
    return index == selectedIndexanadays.value
        ? AppColors.activetabText2
        : AppColors.primaryText;
  }

  void selectItemana(int index) {
    if (index != selectedIndexana.value) {
      selectedIndexana.value = index;

      update();
    }
  }

  void selectItemanadays(int index) {
    if (index != selectedIndexanadays.value) {
      selectedIndexanadays.value = index;

      update();
    }
  }

  void setInitialSelectedIndex(int index) {
    selectedIndexanadays.value = index;
  }

  void setInitialSelectedIndexAnalytic(int index) {
    selectedIndexanadays.value = index;
  }
}

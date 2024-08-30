import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountDetailsController extends GetxController {
  final ThemeController themeController = Get.put(ThemeController());

  RxBool local = true.obs;
   
final RxBool hasAssets = false.obs;
  setLocalValue(bool value) {
    local.value = value;
  }
   

  Color getLocalButtonColor() {
    return local.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getSwiftButtonColor() {
    return local.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getLocalButtonTextColor() {
    return local.value == true ? AppColors.activetabText : AppColors.inactivetabText;
  }

  Color getSwiftButtonTextColor() {
    return local.value == false ? AppColors.activetabText : AppColors.inactivetabText;
  }

///icomegraph
 RxBool Incomegraph = true.obs;
setLocalValueforincome(bool value) {
    Incomegraph.value = value;
  }
 Color getLocalButtonColorforinc() {
    return Incomegraph.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getSwiftButtonColorforinc() {
    return Incomegraph.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getLocalButtonTextColorforinc() {
    return Incomegraph.value == true ? AppColors.activetabText : AppColors.inactivetabText;
  }

  Color getSwiftButtonTextColorforinc() {
    return Incomegraph.value == false ? AppColors.activetabText : AppColors.inactivetabText;
  }


  ///feecashgraph  
 RxBool feecashgraph = true.obs;
setLocalValueforfeecash(bool value) {
    feecashgraph.value = value;
  }
 Color getLocalButtonColorforfeecash() {
    return feecashgraph.value == true ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getSwiftButtonColorforfeeash() {
    return feecashgraph.value == false ? AppColors.activeTabButtons : AppColors.inActiveTabButtons2;
  }

  Color getLocalButtonTextColorforfeecash() {
    return feecashgraph.value == true ? AppColors.activetabText : AppColors.inactivetabText;
  }

  Color getSwiftButtonTextColorforfeecash() {
    return feecashgraph.value == false ? AppColors.activetabText : AppColors.inactivetabText;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class MyPageController extends GetxController {
  final PageController pageController = PageController();
  var activePage = 0.obs;

  void onPageChanged(int page) {
    activePage.value = page;
  }
   Color getPageIndicatorColor(int index) {
    return activePage == index
  
        ? AppColors.primary
        : AppColors.buttongrey;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();  
  }
}

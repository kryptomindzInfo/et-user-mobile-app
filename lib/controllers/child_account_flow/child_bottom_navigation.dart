import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChildBtmNavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<BottomNavigationBarItem> get bottomNavItems => [
        buildNavItem(0, AppAssets.home, 'Home'),
        buildNavItem(1, AppAssets.transaction, 'Transaction'),
        // buildNavItem(2, AppAssets.btnstock, 'Person'),
        // buildNavItem(3, AppAssets.btncrypto, 'Person'),
        buildNavItem(4, AppAssets.setting, 'Settings'),
      ];

  void changeTab(int index) {
    currentIndex.value = index;
  }

  BottomNavigationBarItem buildNavItem(
      int index, String imageAsset, String label) {
    return BottomNavigationBarItem(
      icon: Obx(() {
        return currentIndex.value == index
            ? ColorFiltered(
                colorFilter: ColorFilter.mode(
                  AppColors.yellow,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  imageAsset,
                  color: AppColors.buttongrey,
                  width: 20.w,
                  height: 20.h,
                ),
              )
            : Image.asset(
                imageAsset,
                color: AppColors.buttongrey,
                width: 20.w,
                height: 20.h,
              );
      }),
      label: label,
    );
  }
}

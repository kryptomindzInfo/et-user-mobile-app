import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class BtmNavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<BottomNavigationBarItem> get bottomNavItems => [
        buildNavItem(0, AppAssets.home, 'Home'),
        buildNavItem(1, AppAssets.transaction, 'Transaction'),
        buildNavItem(2, AppAssets.btnstock, 'Stock'),
        buildNavItem(3, AppAssets.btncrypto, 'Crypto'),
        buildNavItem(4, AppAssets.Esimnavigation, 'ESim'),
        buildNavItem(5, AppAssets.setting, 'Settings'),
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
                  AppColors.yellowButton,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  imageAsset,
                  color: AppColors.greyText2,
                  width: 20.w,
                  height: 20.h,
                ),
              )
            : Image.asset(
                imageAsset,
                color: AppColors.greyText2,
                width: 20.w,
                height: 20.h,
              );
      }),
      label: label,
    );
  }
}

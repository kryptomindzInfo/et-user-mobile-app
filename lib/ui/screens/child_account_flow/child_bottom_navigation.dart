import 'package:et_bank/controllers/child_account_flow/child_bottom_navigation.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_home_screen.dart';
import 'package:et_bank/ui/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class ChildBottomNavigation extends StatefulWidget {
  @override
  State<ChildBottomNavigation> createState() => _ChildBottomNavigationState();
}

class _ChildBottomNavigationState extends State<ChildBottomNavigation> {
  final ThemeController themeController = Get.put(ThemeController());

  final ChildBtmNavigationController controller =
      Get.put(ChildBtmNavigationController());

  Widget _getBodyWidget() {
    switch (controller.currentIndex.value) {
      case 0:
        return ChildHomeScreen();
      case 1:
        return Transfer();
      case 2:
        return Settings();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Obx(() {
        return _getBodyWidget();
      }),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          // height: 70.h,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: AppColors.pink,
            selectedItemColor: AppColors.yellow,
            unselectedItemColor: AppColors.buttongrey,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.changeTab(index),
            type: BottomNavigationBarType.fixed,
            items: controller.bottomNavItems,
          ),
        ),
      ),
    );
  }
}

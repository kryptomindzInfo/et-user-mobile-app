import 'package:et_bank/controllers/Bottomnavigation/bottomcontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/EsimonHome/Esim_mainpage.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_add_new_contact.dart';

import 'package:et_bank/ui/screens/homescreens/homescreen.dart';
import 'package:et_bank/ui/screens/settings/settings.dart';
import 'package:et_bank/ui/screens/stock/Getstart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class btmnavigation extends StatelessWidget {
  final BtmNavigationController controller = Get.put(BtmNavigationController());

  Widget _getBodyWidget() {
    switch (controller.currentIndex.value) {
      case 0:
        return HomeScreen();
      case 1:
        return Transfer();
      case 2:
        return Getstart();

      case 3:
        return CryptoAddNewContact();
      case 4:
        return Esimmainpage();
      case 5:
        return Settings();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return _getBodyWidget();
      }),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Obx(() {
        return BottomNavigationBar(
          elevation: 0,
          backgroundColor: themeController.bgColor.value,
          selectedItemColor: AppColors.yellowButton,
          unselectedItemColor: AppColors.buttongrey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeTab(index),
          type: BottomNavigationBarType.fixed,
          items: controller.bottomNavItems,
        );
      }),
    );
  }
}

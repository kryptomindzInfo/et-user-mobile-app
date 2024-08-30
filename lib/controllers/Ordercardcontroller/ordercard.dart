import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:et_bank/global/constants/colors.dart';

class OrderCardController extends GetxController {
  var currentFairIndex = 0.obs;
  var showDetails = false.obs;
  var isFrozen = false.obs;
  Color containerColor = AppColors.greyBox;
  Color container2Color = AppColors.greyBox;
  var eyeIcon = AppAssets.ordereye;
  final List<String> fairImageListHide = [
    AppAssets.ordercard1, // Replace with fair image paths
    AppAssets.ordercard2,
    AppAssets.ordercard3,
  ].obs;

  void onPageChanged(int index, reason) {
    currentFairIndex.value = index;
    update();
  }

  final List<String> fairImageList = [
    AppAssets.orderfair1,
    AppAssets.orderfair2,
    AppAssets.orderfair3,
  ].obs;

  List<String> get currentFairImageList =>
      showDetails.isTrue ? fairImageList : fairImageListHide;

  void changeDetails() {
    showDetails.toggle();
    containerColor =
        showDetails.isTrue ? AppColors.primary : AppColors.buttongrey;
    eyeIcon = showDetails.isTrue ? AppAssets.hideordericon : AppAssets.ordereye;
    update();
  }

  void freezeCarousel() {
    isFrozen.toggle();

    container2Color =
        isFrozen.isTrue ? AppColors.primary : AppColors.buttongrey;
    update();
  }
}

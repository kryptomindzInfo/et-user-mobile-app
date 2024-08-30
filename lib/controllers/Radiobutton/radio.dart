import 'dart:ui';

import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RadioController extends GetxController {

  var selectedRadio = 0.obs;

   Color getBackgroundColor(int index) {
    return selectedRadio.value == index
        ? AppColors.grey
        : AppColors.buttongrey;
  }
  
}
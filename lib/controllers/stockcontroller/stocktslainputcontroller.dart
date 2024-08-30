import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TslaAlertInputController extends GetxController {
  final RxDouble limit = 162.25.obs;
  final RxString errorText = ''.obs;
  RxInt numberOfDigits = 0.obs;
  TextEditingController textEditingController = TextEditingController();
  void checkLimit(String value) {
    numberOfDigits.value = value.length;

    if (value.isNotEmpty) {
      double inputValue = double.tryParse(value) ?? 0;
      double decrease = limit.value - inputValue;
      if (decrease > 0) {
        errorText.value = '${decrease.abs()}% Decrease';
      } else if (decrease < 162.25) {
        errorText.value = '${decrease.abs()}% increase';
      } else {
        errorText.value = '';
      }
    }
    update();
  }
}

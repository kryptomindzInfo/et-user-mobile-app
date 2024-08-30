import 'package:get/get.dart';

class EsimDataUsageController extends GetxController {
  final RxBool isMonthSelected = true.obs;
  final RxBool isDaySelected = false.obs;

  void selectMonth() {
    isMonthSelected.value = true;
    isDaySelected.value = false;
  }

  void selectDay() {
    isMonthSelected.value = false;
    isDaySelected.value = true;
  }
}
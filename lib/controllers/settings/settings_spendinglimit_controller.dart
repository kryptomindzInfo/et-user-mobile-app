import 'package:get/get.dart';

class SpendingLimitController extends GetxController {
  RxBool cardSpendingLimit = false.obs;

  void setcardSpendingLimit() {
    cardSpendingLimit.value = !cardSpendingLimit.value;
  }
}

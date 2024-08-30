import 'package:get/get.dart';

class StockBuyteslaController extends GetxController {
  RxString selectedCurrency1 = 'TSLA'.obs;
  RxString selectedCurrency2 = 'USD'.obs;
  RxBool exceedsBalance = false.obs;
   RxBool exceedsBalance2 = false.obs;

  void changeSelectedCurrency1(String currency) {
    selectedCurrency1.value = currency;
  }

  void changeSelectedCurrency2(String currency) {
    selectedCurrency2.value = currency;
  }

 

  void setExceedsBalance(bool val) {
    exceedsBalance.value = val;
  }
    void setExceedsBalance2(bool val) {
    exceedsBalance2.value = val;
  }
}

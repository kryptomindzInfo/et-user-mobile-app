import 'package:get/get.dart';

class CryptoBuyDotController extends GetxController {
  RxString selectedCurrency1 = 'DOT'.obs;
  RxString selectedCurrency2 = 'DOT'.obs;
  RxBool exceedsBalance = false.obs;

  void changeSelectedCurrency1(String currency) {
    selectedCurrency1.value = currency;
  }

  void changeSelectedCurrency2(String currency) {
    selectedCurrency2.value = currency;
  }

  //  Color changeContainer2Color() {
  //   return selectedCurrency2.value ;
  // }

  void setExceedsBalance(bool val) {
    exceedsBalance.value = val;
  }
}

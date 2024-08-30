import 'package:get/get.dart';

class AccountDetailsGBPController extends GetxController {
  RxString selectedCurrency = 'USD'.obs;

  void changeSelectedCurrency(String currency) {
    selectedCurrency.value = currency;
  }

   RxString selectedstockCurrency = 'AUD'.obs;

  void changestockSelectedCurrency(String currency) {
    selectedstockCurrency.value = currency;
  }
}

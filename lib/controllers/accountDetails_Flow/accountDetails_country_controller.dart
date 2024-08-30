import 'package:get/get.dart';

class AccountDetailsCountryController extends GetxController {
  RxString selectedCountry = 'Afghanistan'.obs;
  RxString selectedCurrency = 'USD'.obs;

  void changeSelectedCountry(String countryName) {
    selectedCountry.value = countryName;
  }

  void changeSelectedCurrency(String countryName) {
    selectedCurrency.value = countryName;
  }
}

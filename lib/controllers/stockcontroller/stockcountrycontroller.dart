import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Country {
  final String name, code, flag, dialCode;
  Country({
    required this.name,
    required this.code,
    required this.dialCode,
    required this.flag,
  });
}

class StockCountryController extends GetxController {
  final selectedCountry = Country(
    name: '',
    code: '',
    dialCode: '',
    flag: '',
  ).obs;
   final selectedCountry2 = Country(
    name: '',
    code: '',
    dialCode: '',
    flag: '',
  ).obs;

  void selectCountry(Country country) {
    selectedCountry.value = country;
  }
  void selectCountry2(Country country) {
    selectedCountry2.value = country;
  }

  RxBool isChecked = false.obs;
  List<Country> allCountries2 = [
    Country(  name: 'None',
        dialCode: '',
        code: '',
        flag: AppAssets.greencircle, // You can provide an appropriate flag for the "None" option
      ),
    Country(
        name: 'Australia', dialCode: '+61', code: 'AU', flag: AppAssets.aus),
    Country(
        name: 'Bulgaria', dialCode: '+359', code: 'BG', flag: AppAssets.bul),
    Country(name: 'Canada', dialCode: '+1', code: 'CA', flag: AppAssets.can),
    Country(name: 'Chile', dialCode: '+56', code: 'CL', flag: AppAssets.chile),
    Country(
        name: 'Colombia', dialCode: '+57', code: 'CO', flag: AppAssets.colom),
    Country(
        name: 'Denmark', dialCode: '+45', code: 'DK', flag: AppAssets.denmark),
    Country(name: 'Cuba', dialCode: '+92', code: 'PK', flag: AppAssets.cuba),
    Country(
        name: 'United States', dialCode: '+1', code: 'US', flag: AppAssets.us),
    Country(
        name: 'Australia', dialCode: '+61', code: 'AU', flag: AppAssets.aus),
    Country(
        name: 'Bulgaria', dialCode: '+359', code: 'BG', flag: AppAssets.bul),
    Country(name: 'Canada', dialCode: '+1', code: 'CA', flag: AppAssets.can),
    Country(name: 'Chile', dialCode: '+56', code: 'CL', flag: AppAssets.chile),
    Country(
        name: 'Colombia', dialCode: '+57', code: 'CO', flag: AppAssets.colom),
    Country(
        name: 'Denmark', dialCode: '+45', code: 'DK', flag: AppAssets.denmark),
    Country(name: 'Cuba', dialCode: '+92', code: 'PK', flag: AppAssets.cuba),
    Country(
        name: 'United States', dialCode: '+1', code: 'US', flag: AppAssets.us),
    Country(
        name: 'Australia', dialCode: '+61', code: 'AU', flag: AppAssets.aus),
    Country(
        name: 'Bulgaria', dialCode: '+359', code: 'BG', flag: AppAssets.bul),
    Country(name: 'Canada', dialCode: '+1', code: 'CA', flag: AppAssets.can),
    Country(name: 'Chile', dialCode: '+56', code: 'CL', flag: AppAssets.chile),
    Country(
        name: 'Colombia', dialCode: '+57', code: 'CO', flag: AppAssets.colom),
    Country(
        name: 'Denmark', dialCode: '+45', code: 'DK', flag: AppAssets.denmark),
    Country(name: 'Cuba', dialCode: '+92', code: 'PK', flag: AppAssets.cuba),
    Country(
        name: 'United States', dialCode: '+1', code: 'US', flag: AppAssets.us),
  ].obs;
  final searchText = ''.obs;

  List<Country> get filteredCountries {
    final text = searchText.value.toLowerCase();
    return allCountries2.where((country) {
      final countryName = country.name.toLowerCase();
      return countryName.contains(text);
    }).toList();
  }

  void setSearchText(String value) {
    searchText.value = value;
    update();
  }
}

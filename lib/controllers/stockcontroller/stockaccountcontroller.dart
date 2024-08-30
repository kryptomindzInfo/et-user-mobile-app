import 'package:get/get.dart';

class stockaccountController extends GetxController {
  final RxBool invest = true.obs;
  final RxBool addmoney = false.obs;

  void selectinvest() {
    invest.value = true;
    addmoney.value = false;
  }

  void selectmoney() {
    invest.value = false;
    addmoney.value = true;
}
}
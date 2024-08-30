import 'package:get/get.dart';

class AccountDetailsTransferCompleteController extends GetxController {
  RxBool excludefromAnalytics = true.obs;

  void setexcludefromAnalytics() {
    excludefromAnalytics.value = !excludefromAnalytics.value;
  }
}

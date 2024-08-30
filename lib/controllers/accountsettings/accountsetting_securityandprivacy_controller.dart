import 'package:get/get.dart';

class AccountSettingsSecurityAndPrivacyController extends GetxController {
  RxBool gamblingBlock = false.obs;
  RxBool appnotif = true.obs;
  RxBool signinwithface = true.obs;
  RxBool hidebalance = false.obs;

  void setGamblingBlock() {
    gamblingBlock.value = !gamblingBlock.value;
  }

  void setappnotif() {
    appnotif.value = !appnotif.value;
  }

  void setsigninwithface() {
    signinwithface.value = !signinwithface.value;
  }

  void sethidebalance() {
    hidebalance.value = !hidebalance.value;
  }
}

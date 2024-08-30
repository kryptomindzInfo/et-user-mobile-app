import 'package:get/get.dart';

class SettingsSecurityController extends GetxController {
  RxBool onlineTransaction = false.obs;
  RxBool locationBased = true.obs;
  RxBool swipePayments = true.obs;
  RxBool atmWithDrawals = false.obs;
  RxBool contactlessPayments = false.obs;

  RxBool firstTimeEsim = true.obs;

  void setfirstTimeEsim(bool value) {
    firstTimeEsim.value = value;
  }

  void setonlineTransaction() {
    onlineTransaction.value = !onlineTransaction.value;
  }

  void selocationBased() {
    locationBased.value = !locationBased.value;
  }

  void setswipePayments() {
    swipePayments.value = !swipePayments.value;
  }

  void setatmWithDrawals() {
    atmWithDrawals.value = !atmWithDrawals.value;
  }

  void setcontactlessPayments() {
    contactlessPayments.value = !contactlessPayments.value;
  }
}

import 'package:get/get.dart';

class DonationsDetailsController extends GetxController {
  RxBool spareChange = true.obs;
  RxBool recurringDonation = true.obs;

  void toggleSpareChange() {
    spareChange.value = !spareChange.value;
  }

  void toggleRecurringDonation() {
    recurringDonation.value = !recurringDonation.value;
  }
}

import 'package:get/get.dart';

class EsimDataWarningController extends GetxController {
  RxString? dataWarningDropDown = 'GB'.obs;

  setDataWarningDropDown(String? value) {
    dataWarningDropDown?.value = value!;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:get/get.dart';

class EsimDataLimitController extends GetxController {
  RxString? dataLimitDropDown = 'GB'.obs;

  setDataLimitDropDown(String? value) {
    dataLimitDropDown?.value = value!;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

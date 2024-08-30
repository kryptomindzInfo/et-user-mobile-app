import 'package:get/get.dart';

class EsimDataPreferenceController extends GetxController {
  RxBool dataWarning = false.obs;
  RxBool dataLimit = false.obs;
  RxBool dataRoaming = false.obs;

  toggleDataWarning() {
    dataWarning.value = !dataWarning.value;
  }

  toggleDataLimit() {
    dataLimit.value = !dataLimit.value;
  }

  toggleDataRoaming() {
    dataRoaming.value = !dataRoaming.value;
  }

  @override
  void onClose() {
    super.onClose();
  }
}

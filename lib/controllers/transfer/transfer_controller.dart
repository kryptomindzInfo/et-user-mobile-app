import 'package:get/get.dart';

class TransferController extends GetxController {
  RxBool firstTime = true.obs;

  setfirstTimeValue(bool value) {
    firstTime.value = value;
  }
}

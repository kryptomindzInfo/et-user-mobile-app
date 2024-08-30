import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:get/get.dart';

class AccountDetailsDOBController extends GetxController {
  RxString DOBhintText = MyText.date2may.obs;

  setDOB(String value) {
    DOBhintText.value = value;
  }
}

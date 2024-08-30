import 'package:get/get.dart';

class SignupDOBController extends GetxController {
  RxString signupDOBhintText = 'DD/MM/YYYY'.obs;

  setDOB(String value) {
    signupDOBhintText.value = value;
  }
}

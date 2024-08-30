import 'package:get/get.dart';

class SignupNameController extends GetxController {
  RxBool firstName = false.obs;
  RxBool lastName = false.obs;

  setFirstName(bool value) {
    firstName.value = value;
  }

  setLastName(bool value) {
    lastName.value = value;
  }
}

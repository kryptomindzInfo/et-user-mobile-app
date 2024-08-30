import 'package:get/get.dart';

class SearchesYourAccountDetailsController extends GetxController {
  RxBool found = false.obs;

  setfound(bool value) {
    found.value = value;
  }
}

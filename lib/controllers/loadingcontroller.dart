import 'package:get/get.dart';

class LoadingController extends GetxController {
  RxBool isLoading = true.obs;

  void stopLoading() {
    isLoading.value = false;
  }

    RxBool shopLoading = true.obs;

  void shopfLoading() {
    shopLoading.value = false;
  }
}
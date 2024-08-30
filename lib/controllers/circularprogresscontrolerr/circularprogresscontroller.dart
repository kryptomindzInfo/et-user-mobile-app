import 'package:get/get.dart';

class ProgressController extends GetxController {
  var isLoading = false.obs;

  void completeLoading() {
    Future.delayed(Duration(seconds: 2), () {
      isLoading(true);
    });
    update();
  }
}

import 'package:get/get.dart';

import '../../ui/screens/onboarding/PageView.dart';

class SplashController extends GetxController {
  double height = 0;
  double width = 0;

  @override
  void onInit() {
    super.onInit();
    move();
  }

  void move() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => MyPageView()); // Navigate to MyPageView using GetX
    });
  }
}

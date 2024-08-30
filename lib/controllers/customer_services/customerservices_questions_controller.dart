import 'package:get/get.dart';

class CustomerQuestionsController extends GetxController {
  // RxBool open = true.obs;
  final List<bool> open = List.generate(8, (index) => false).obs;

  void setOpen(int index) {
    // open.value = !open.value;
    open[index] = !open[index];
  }
}
